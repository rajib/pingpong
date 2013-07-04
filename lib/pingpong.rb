class Ringpong
  def initialize(host, pingcount=10)
    @host = host
    @pingcount = pingcount
  end

  def ping?
    result = `ping -c #{@pingcount} #{@host}`
    if (result.include? "0% packet loss")
      true
    else
      false
    end    
  end
end
