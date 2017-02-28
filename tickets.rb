require "httparty"

token = "6f5eb00e90395a05f81ae4fe745b126e"
url = "http://localhost:3000/api/projects/1/tickets/2.json"

response = HTTParty.get(url,
            headers: {
              "Authorization" => "Token token=#{token}"
              }
)

puts response.parsed_response
