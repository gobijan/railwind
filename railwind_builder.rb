require "open-uri"

puts "Railwind Builder"
puts "----------------"

puts "Step 1: Downloading latest Tailwind CSS file from CDN and save to tailwind.css"
tailwind_uri = URI.parse("https://unpkg.com/tailwindcss/dist/tailwind.css")
tailwind_content = tailwind_uri.read
File.open("tailwind.css", "w") { |f| f.write tailwind_content }
puts "Done."

puts "Step 2: Transforming Tailwind to Railwind"
tailwind = File.open("tailwind.css").read
railwind = tailwind.gsub!(/(^\s*)(\.)/, '\1%')
puts "Done."

puts "Step 3: Writing railwind.scss"
File.open("railwind.scss", "w") { |f| f.write railwind }
puts "Done."
puts "----------------"
puts "Railwind is ready for sass :)"
