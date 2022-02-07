require 'httparty'

def ban_id
puts '''

     >> Cek IP Address Public <<
	 
           Created by Alfin   
'''
puts()
puts()
end

def main
res = HTTParty.get('https://ipinfo.io/')

puts " > IP : #{res['ip']}"

puts()

puts " > Kota : #{res['city']}"

puts()

puts " > Daerah : #{res['region']}"

puts()

puts " > Negara : #{res['country']}"

puts()

puts " > Lokasi : #{res['loc']}"

puts()

puts " > Organisasi : #{res['org']}"

puts()

puts " > Zona Waktu : #{res['timezone']}"

puts()

puts res.body("Error") if res.code != 200

end

ban_id
main
