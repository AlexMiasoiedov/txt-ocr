require 'dotenv'
require 'ocr_space'

Dotenv.load

resource = OcrSpace::Resource.new(apikey: ENV["API_KEY"])

result = resource.convert file: "./recognize_me.png"
# result = resource.convert file: "./flight-plan1.GIF"
# result = resource.convert file: "./flight-plan2.JPEG"
# result = resource.convert file: "./tiket1.JPEG"

puts result

