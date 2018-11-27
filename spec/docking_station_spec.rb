require 'docking_station'

describe DockingStation do
  # docking station releases a bike
  it { is_expected.to respond_to :release_bike }
# working function returns true, so this should pass
   it 'gives us a working bike' do
     expect(DockingStation.new.release_bike.working?).to eq true
   end
 end

 it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
