require 'net/http'
require 'uri'
require 'json'

member = File.expand_path(ARGV[1])

File.open(member) do |f|
   name = JSON.load(f)
   response = Net::HTTP.post(
      URI(ARGV[2]),
      name.to_json,
      'Content-Type' => 'application/json'
   )

   if f.eof?
      f.close
   elsif !f.eof
      return
   end
end
