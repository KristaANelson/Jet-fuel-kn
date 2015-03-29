class JetFuel
  attr_reader :connection

  def initialize
    @connection = Faraday.new(url: "http://localhost:3000/v1")
  end

  def shorten
    parse(connection.post("urls", params))
  end

  private

  def parse(response)
    JSON.parse(response.body)
  end
end
