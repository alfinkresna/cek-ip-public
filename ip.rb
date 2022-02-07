# Author : Alfin
require 'httparty'

def main

puts '''

     >> Cek IP Address Public <<
        
'''

res = HTTParty.get('https://ipinfo.io/')

puts res.body if res.code == 200

puts res.body("Error") if res.code != 200

end

main
