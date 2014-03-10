require_relative "../lib/plane"
require_relative "../lib/weather"

class Airport 

	DEFAULT_CAPACITY = 6

	def initialize (options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@planes = []
    @weather = ["sunny", "sunny", "sunny", "sunny", "stormy"].sample
		end

	def plane_count
		@planes.count
	end

	def land(plane)
    raise "Airport is full" if full? #|| (raise "Do not land, stormy weather warning!" if @weather == "stormy")
		@planes << plane
	end

	def take_off(plane)
      # raise "Do not takeoff, stormy weather ahead!" if @weather == "stormy"
      @planes.delete(plane)
	end

	def full?
		plane_count == @capacity
	end
	  
end