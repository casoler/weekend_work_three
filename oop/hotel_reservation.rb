# In this exercise, we've already implemented the class, and you have to write the
# driver code.
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end

puts "TESTING hotel_reservation?..."
puts

hotel_reservation = HotelReservation.new(customer_name: 'Smith', date: '2016-08-01', room_number: 2101, amenities: [])

puts 'Initial room number: ' + hotel_reservation.room_number.to_s

puts 'Change the room number'
hotel_reservation.room_number = 2201

puts 'New room number: ' + hotel_reservation.room_number.to_s

if hotel_reservation.room_number == 2201
  puts "PASS!"
else
  puts "F"
end


puts 'Hotel Reservation amenities: ' + hotel_reservation.amenities.join

puts 'Add a fridge:'
hotel_reservation.add_a_fridge
puts 'Updated Hotel Reservation amenities: ' + hotel_reservation.amenities.join(", ")

puts 'Add a crib:'
hotel_reservation.add_a_crib
puts 'Updated Hotel Reservation amenities: ' + hotel_reservation.amenities.join(", ")

puts 'Add a butler:'
hotel_reservation.add_a_custom_amenity('butler')
puts 'Updated Hotel Reservation amenities: ' + hotel_reservation.amenities.join(", ")

if hotel_reservation.amenities == ['fridge', 'crib', 'butler']
  puts "PASS!"
else
  puts "F"
end
# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

