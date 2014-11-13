require_relative "building"
require_relative "apartment"

building_one_apartments = [
  Apartment.new(250.0, true, 400, 1, 1),
  Apartment.new(250.0, false, 400, 1, 1),
  Apartment.new(450.0, false, 850, 2, 1)
]

building_two_apartments = [
  Apartment.new(250.0, true, 400, 1, 1),
  Apartment.new(250.0, false, 400, 1, 1),
  Apartment.new(450.0, false, 850, 2, 1)
]


buildings = [
  Building.new(
    "123 Fake Street, Fake Town",
    "Victorian",
    true,
    true,
    5,
    building_one_apartments
  ),
  Building.new(
    "123 Fake Street, Fake Town",
    "Victorian",
    true,
    true,
    5,
    building_two_apartments
  )
]

# def my_puts(value)
#   if value.is_a?(Array)
#     value.each do |v|
#       print v.to_s
#     end
#   else 
#     print value.to_s
#   end
# end

# my_puts(buildings)

def list_buildings(buildings)
  buildings.each do |building|
    puts "#{buildings.index(building)}: #{building}"
  end
end

def list_apartments(buildings)
  buildings.each do |building|
    building.apartments.each do |apartment|
      puts apartment
    end
  end
end

# puts buildings

puts "(q)quit, (lb)list buildings, (la)list all apartments"

response = gets.strip

while response != 'q'
  case response
  when 'lb'
    list_buildings(buildings)
  when 'la'
    list_apartments(buildings)
  else
    puts "That menu item doesn't exist"
  end
  response = gets.strip
end














