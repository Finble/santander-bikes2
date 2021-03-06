require_relative 'bike'

class DockingStation

	DEFAULT_CAPACITY = 20
	attr_reader :bike, :capacity

	def initialize
		@bikes = []
		@capacity = DEFAULT_CAPACITY
	end

	def release_bike
		fail 'No bikes available' if empty?
		# fail 'No working bikes available' if bikes == broken?
		bikes.pop
	end

	def dock(bike)
		fail 'Docking station full' if full?
		bikes << bike
	end

	private

	attr_reader :bikes

	def full?
		bikes.count >= capacity
	end

	def empty?
		bikes.empty?
	end

end