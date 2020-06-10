require './lib/Boris-Bikes'
describe DockingStation do

  it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)
    #subject == DockingStation.new
    expect(subject.release_bike).to eq bike
  end

  it 'raises an error when there are no bikes available' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end


    it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'raises an error when station is at full capacity' do
    subject.dock(Bike.new)
    expect { subject.dock Bike.new }.to raise_error 'No space'
  end

  it { is_expected.to respond_to(:bike) }

end
