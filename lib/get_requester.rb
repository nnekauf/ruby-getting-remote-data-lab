require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    def initialize(string_url) 
        @url = string_url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        people = JSON.parse(self.get_response_body)
        #people.collect {|person| program["agency"]}
    end
end
