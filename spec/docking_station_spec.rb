require 'docking_station'

describe DockingStation do
  # docking station releases a bike
   it { is_expected.to respond_to :release_bike }
# working function returns true, so this should pass
   it 'gives us a working bike' do
     a = Bike.new
     g = DockingStation.new
     g.dock(a)
     expect(g.release_bike.working?).to eq true
   end

   it { is_expected.to respond_to(:dock).with(1).argument }

   it 'docks a bike' do
   bike = Bike.new
   expect(subject.dock(bike)).to eq bike
   end

   it 'reports a bike is present' do
   bike = Bike.new
   expect(subject.dock(bike)).to eq bike
   end

   it 'checks whether a bike is present' do
     ds = DockingStation.new
     expect{ds.release_bike}.to raise_error('No bikes available')
   end

   it 'checks if the station is full' do
       subject.dock(Bike.new)
       expect { subject.dock Bike.new }.to raise_error 'Station Full'
   end
end
