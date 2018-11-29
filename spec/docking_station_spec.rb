require 'docking_station'

describe DockingStation do
  # docking station releases a bike
   it { is_expected.to respond_to :release_bike }
# working function returns true, so this should pass
   it 'gives us a working bike' do
     expect(DockingStation.new.release_bike.working?).to eq true
   end

   it { is_expected.to respond_to(:dock).with(1).argument }

   it 'docks a bike' do
   bike = Bike.new
   expect(subject.dock(bike)).to eq bike
   end

   it 'reports a bike is present' do 
   bike = Bike.new
   expect(subject.dock(bike)).to eq 'bike'
   end

 end
