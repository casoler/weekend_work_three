# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods:
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Remote
  attr_accessor :tv

  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    @tv.power = !@tv.power

    unless @tv.power
      @tv.volume = 0
      @tv.channel = 0
    end
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    if @tv.volume > 0
      @tv.volume -= 1
    end
  end

  def set_channel(channel)
    @tv.channel = channel
  end
end


