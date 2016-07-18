# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.

# The Tv class will have the attributes: power, volume, and channel.
require_relative 'tv.rb'
require_relative 'remote.rb'



# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods:
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

tv = Tv.new(power: false, volume: 0, channel: 0)
remote = Remote.new(tv)

puts 'turn on the tv'
remote.toggle_power
p remote.tv.power

puts 'turn up the volume!'
remote.increment_volume
remote.increment_volume
remote.increment_volume
remote.increment_volume
remote.increment_volume
remote.increment_volume
remote.increment_volume

puts 'the volume should be at 7'
p remote.tv.volume == 7

puts 'Your mother yells at you to turn down the volume!'
remote.decrement_volume
remote.decrement_volume
remote.decrement_volume

puts 'the volume should be at 4'
p remote.tv.volume == 4

puts 'look for the game'
remote.set_channel(35)

puts 'on channel 35?'
p remote.tv.channel == 35

puts "but game isn't on that channel!  change the channel"
remote.set_channel(85)

puts 'on channel 85?'
p remote.tv.channel == 85

puts 'go read a book - turn off the tv'
remote.toggle_power
puts 'tv off? ' + (remote.tv.power == false).to_s


