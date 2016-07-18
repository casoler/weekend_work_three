class Tv
  attr_accessor :power, :volume, :channel

  def initialize(init_array)
    @power = init_array[:power]
    @volume = init_array[:volume]
    @channel = init_array[:channel]
  end
end
