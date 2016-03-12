require 'rubygems'
require 'yahoo_weatherman'

puts "What's your WOIED? (can be found at http://woeid.rosselliot.co.nz/lookup"
woeid = gets.chomp
client = Weatherman::Client.new
response = client.lookup_by_woeid woeid

info = response.forecasts
x = 0
while (x < 5)
	if (x == 0)
		info[x]["day"] = "Today"
	elsif (x == 1)
		info[x]["day"] = "Tomorrow"	
	else
		end
	puts "#{info[x]["day"]} the weather will be #{info[x]["text"]} with a high of #{info[x]["high"]} and a low of #{info[x]["low"]}."	
	x += 1
end
