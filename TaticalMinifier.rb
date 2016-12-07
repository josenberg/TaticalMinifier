require "tinify"

puts "Enter your API Key:"
apiKey = gets.chomp

Tinify.key = apiKey

source = Tinify.from_file("unoptimized.jpg")
source.to_file("optimized.jpg")
