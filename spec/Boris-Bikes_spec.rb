require './lib/Boris-Bikes'
describe DockingStation do

  it {should respond_to(:release_bike)}
    it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it { is_expected.to respond_to(:bike) }

end
