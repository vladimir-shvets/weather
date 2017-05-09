require 'net/http'
require 'json'


#All longtitude and latitude data sourced by http://www.latlong.net


#Hamburg <3
def weather_hamburg
  url_hamburg = URI.parse('http://api.openweathermap.org/data/2.5/weather?lat=53.5511&lon=9.9937&&APPID=fecc541c55c2ee50b1ebf1d68067b1e8')
  req_hamburg = Net::HTTP::Get.new(url_hamburg.to_s)
  res_hamburg = Net::HTTP.start(url_hamburg.host, url_hamburg.port) {|http|
    http.request(req_hamburg)}
  puts res_hamburg.body
end


#London
def weather_london
  url_london = URI.parse('http://api.openweathermap.org/data/2.5/weather?lat=51.509865&lon=-0.118092&&APPID=fecc541c55c2ee50b1ebf1d68067b1e8')
  req_london = Net::HTTP::Get.new(url_london.to_s)
  res_london = Net::HTTP.start(url_london.host, url_london.port) {|http|
    http.request(req_london)}
  puts res_london.body
end


#Dnipro
def weather_dnipro
  url_dnipro = URI.parse('http://api.openweathermap.org/data/2.5/weather?lat=48.45&lon=34.98333&&APPID=fecc541c55c2ee50b1ebf1d68067b1e8')
  req_dnipro = Net::HTTP::Get.new(url_dnipro.to_s)
  res_dnipro = Net::HTTP.start(url_dnipro.host, url_dnipro.port) {|http|
    http.request(req_dnipro)}
  puts res_dnipro.body
end


#New-York
def weather_washington
  url_washington = URI.parse('http://api.openweathermap.org/data/2.5/weather?lat=38.889931&lon=-77.009003&&APPID=fecc541c55c2ee50b1ebf1d68067b1e8')
  req_washington = Net::HTTP::Get.new(url_washington.to_s)
  res_washington = Net::HTTP.start(url_washington.host, url_washington.port) {|http|
    http.request(req_washington)}
  puts res_washington.body
end

#Barcelona
def weather_barcelona
  url_barca = URI.parse('http://api.openweathermap.org/data/2.5/weather?lat=41.390205&lon=2.154007&&APPID=fecc541c55c2ee50b1ebf1d68067b1e8')
  req_barca = Net::HTTP::Get.new(url_barca.to_s)
  res_barca = Net::HTTP.start(url_barca.host, url_barca.port) {|http|
    http.request(req_barca)}
  puts res_barca.body
  return res_barca
end

puts weather_hamburg
puts weather_dnipro
puts weather_london
puts weather_barcelona
puts weather_washington