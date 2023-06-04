# Write your code here

require 'net/http'
require 'json'


class GetRequester


  def get_response_body
    uri = URI(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

    def parse_json
    response_body = get_response_body
    JSON.parse(response_body)
  end


  def initialize(url)
    @url = url
  end


end


get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
get_requester.parse_json