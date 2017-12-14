class UrlParser
  attr_reader :each,:scheme,:domain,:port,:path, :fragment_id

  def initialize(new_url)
    @new_url = new_url
  end

  def scheme
    @scheme = @new_url.split(':').first
  end

  def domain
    @domain = @new_url.split('//')[1].split(':')[0]
  end

  def port
    if @new_url.split(':')[2]
      @port = @new_url.split(':')[2].split('/')[0]
    else
      if @new_url.split(':')[0] == "http"
        @port = "80"
      else
        @port = "443"
      end
    end
  end

  def path
    @path = @new_url.split('//')[1].split('/')[1].split('?')[0]
    if @path == ''
      nil
    else
      @path
    end
  end

  def query_string
    string = @new_url.split('?')[1].split('#')[0]
    hash = {}
    array = string.split('&')
    array.each do |x|
      x = x.split('=')
    key = x[0]
    value = x[1]
    hash[key]=value
    end
    @query_string = hash
  end

  def fragment_id
    @fragment_id = @new_url.split('#')[1]
  end

end
