require "tinify"

puts "Enter your API Key:"
apiKey = gets.chomp

Tinify.key = apiKey

# Create a directory called output in case that its dont exist
Dir.mkdir("output") unless File.exists?("output")

Dir.glob("*.{png,jpg}").each{|image|
  puts "Minifing the  #{image}"
  source = Tinify.from_file(image)
  source.to_file("output/" + image)
}
