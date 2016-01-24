# SHIOLINK interface
class Shiolink
  # initialize with callbacks
  # @param [Proc] load SHIORI load(dirpath)
  # @param [Proc] unload SHIORI unload()
  # @param [Proc] request SHIORI request(request_str)
  def initialize(load, unload, request)
    @load = load
    @unload = unload
    @request = request
    @session = nil
  end

  # add line
  # @param [String] line line that ends with "\n"
  # @return [String] SHIOLINK protocol response string or nil
  def add_line(line)
    unless @session
      case line[0 ... 3]
      when '*L:'
        path = line[3 ... line.size].chomp + line.match(/[\/\\]/).to_s
        @load.call(path)
        nil
      when '*S:'
        @session = ''
        line
      when '*U:'
        @unload.call
        nil
      end
    else
      @session += line
      if line.chomp.size != 0
        nil
      else
        response = @request.call(@session)
        @session = nil
        response
      end
    end
  end

  # start watching IO
  # @param [IO] input readable stream
  # @param [IO] output writable stream
  def start(input = $stdin, output = $stdout)
    input.each_line do |line|
      if response = add_line(line)
        output.print(response)
        #output.flush
      end
    end
  end
end
