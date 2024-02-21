require "sinatra"
require "sinatra/reloader"
require "http"

api_url = "https://api.exchangerate.host/list?access_key=#{ENV["EXCHANGE_RATE_KEY"]}"

x = HTTP.get(api_url)  

get("/") do

  puts x.to_s

end
