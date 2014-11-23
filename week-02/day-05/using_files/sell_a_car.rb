# Step 0
print "Do you want to write a car ad? (This will delete the existing ad) (y/n) "
start_again = gets.strip

if start_again == 'y'
  if File.exists? 'ad.txt'
    File.unlink('ad.txt')
  end
end

# Step 1: Make sure we have a file
unless File.exists? 'ad.txt'
  file = File.new('ad.txt', 'a+')
  file.close

  # Step 2: Ask questions
  print "Number of KMs: "
  number_of_kms = gets.strip.to_i

  print "What kind of doors does it have: "
  door_type = gets.strip

  print "Does it have a sunroof: "
  sunroof = gets.strip

  print "What kind of engine: "
  engine = gets.strip

  print "What is the asking price: "
  price = gets.strip

  # Step 3: Write the data
  File.open('ad.txt', 'a+') do |ad_file|
    ad_file.write("Number of KMs: #{number_of_kms}\n")
    ad_file.write("Door Type: #{door_type}\n")
    ad_file.write("Sunroof: #{sunroof}\n")
    ad_file.write("Engine Type: #{engine}\n")
    ad_file.write("Asking Price: #{price}")
  end
else
  # Step 4: Display the file
  file = File.open('ad.txt', 'r')
  puts file.read
end












