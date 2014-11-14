require "pry"

require_relative "building"
require_relative "apartment"

building_one_apartments = [
  Apartment.new(250.0, false, 400, 1, 1),
  Apartment.new(250.0, true, 400, 1, 1),
  Apartment.new(450.0, true, 850, 2, 1)
]

building_two_apartments = [
  Apartment.new(250.0, false, 400, 1, 1),
  Apartment.new(250.0, true, 400, 1, 1),
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

def list_buildings(all_buildings)
  all_buildings.each do |single_building|

    is_available_values = single_building.apartments.map do |single_apartment|
      single_apartment.is_available
    end

    is_there_an_available_apartment = is_available_values.include?(true)

    if is_there_an_available_apartment
      puts "#{all_buildings.index(single_building)}: #{single_building}"
    end
  end

  # available_buildings = all_buildings.select do |single_building|
  #   is_occupied_values = single_building.apartments.map do |single_apartment|
  #     single_apartment.is_occupied
  #   end

  #   is_occupied_values.include?(false)
  # end

  # puts available_buildings
end

def list_apartments(buildings_array)
  print "Choose a building: "
  building_number = gets.strip.to_i

  single_building = buildings_array[building_number]

  single_building.apartments.each do |a|
    puts "#{single_building.apartments.index(a)}: #{a}"
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














