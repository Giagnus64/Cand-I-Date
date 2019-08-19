require 'rest-client'
require 'json'
require 'byebug'

api_key = 'WnjQpy3y0jreEfWOnzowsdckjSNuomCnPoPFRDrx'


uri = URI.parse("https://api.propublica.org/congress/v1/116/senate/members.json")

request = Net::HTTP::Get.new(uri)
request["X-Api-Key"] = api_key
req_options = {
    use_ssl: uri.scheme == "https",
}

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
    end

res = JSON.parse(response.body)

arr_of_senator_names = ["Bernard Sanders"]

arr_of_senator_hashes = res["results"].first["members"].select{|member| 
    member_name = "#{member["first_name"]} #{member["last_name"]}"
    arr_of_senator_names.include?(member_name)
}
parse_hashes = arr_of_senator_hashes.map{|hash| 

{first_name: hash["first_name"], 
last_name: hash["last_name"], 
party: hash["party"], 
chamber: "house", 
state: hash["state"]}}
puts parse_hashes
=begin
senate
"Bernard Sanders "    
"Elizabeth Warren "
"Kamala Harris "
"Kirsten Gillibrand"
"Cory Booker "

"Mitch McConnell "
"Mitt Romney "
"Michael Crapo "
"Lindsey Graham "
"Ted Cruz "

house
"Tulsi Gabbard "
"Rashida Tlaib "
"Joaquín Castro "
"Ilhan Omar "
"Alexandria Ocasio-Cortez "

"Barry Loudermilk "
"Kevin McCarthy "
"Steve Scalise "
"Lloyd Smucker "
"Liz Cheney "
=end


