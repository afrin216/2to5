require 'json'
require 'net/https'

def get_response(uri_string)
    uri = URI(URI.escape(uri_string))
    req = Net::HTTP::Get.new(uri.request_uri)
    response = Net::HTTP.start(uri.host, uri.port) { |http| http.request(req) }
    case response
      when Net::HTTPSuccess
        return response.body
      else
        raise "Failed to get data from #{uri} due to #{response.body}"
      end
end

#########################################################################################
#Given a jumble of letters, this script uses an api to find best anagram 
#from the letters and then outputs it in random ascii art form using another api
#cerner_2^5_2017
#Usage: ruby anagram_ascii.rb <random_group_of_letters>
#########################################################################################
unless ARGV && ARGV.length == 1
  puts "Incorrect number of args (expected 1)"
  puts "usage: ruby anagram_ascii.rb <random_group_of_letters>"
  exit 1  
end

jumble = ARGV[0]
#get best anagram word for the jumble
anagram = JSON.parse(get_response("http://www.anagramica.com/best/#{jumble}"))['best'][0]
fonts = "standard starwars".split(" ")
#get list of fonts and select a random fonts
puts get_response("http://artii.herokuapp.com/make?text=#{anagram}&font=#{fonts[rand(fonts.length)]}")