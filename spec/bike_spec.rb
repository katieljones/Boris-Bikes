require 'bike.rb'
describe Bike do
  it { expect(Bike).to respond_to :working? }
  it { expect(Bike.working?).to eq true }
end
