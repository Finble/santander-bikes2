require 'docking_station'

describe DockingStation do 

	it {is_expected.to respond_to :release_bike}

	# it 'releases working bikes' do
	# 	bike = subject.release_bike
	# 	expect(bike).to be_working
	# end

	it {is_expected.to respond_to(:dock).with(1).argument}

	it {is_expected.to respond_to(:bike)}

	# it 'returns docked bikes' do
	# 	bike = Bike.new
	# 	subject.dock(bike)
	# 	expect(subject.bike).to eq bike
	# end

	it 'has a default capacity' do
		expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
	end

		describe '#release_bike' do

			it 'releases a bike' do
			bike = Bike.new  #creates a new instance of bike
			subject.dock(bike) #docks the new instance of bike into a new instance of DockingStation (subject)
			expect(subject.release_bike).to eq bike  #expects release_bike to release a bike from array of bikes (that is added to when a new instance of bike is docked), so tests release_bike does not release a bike it does not have 
			end

			it 'raises an error where there are no bikes available' do
			expect {subject.release_bike}.to raise_error 'No bikes available'  #as there is no code to create a bike, so DockingStation.new(subject).release_bikes starts with no bikes, test ensures error message arises when no bikes to release
			end

		end

		describe '#dock' do

			it 'raises an error when full' do
				subject.capacity.times {subject.dock Bike.new}
				expect{subject.dock Bike.new}.to raise_error 'Docking station full'
			end
		end
end