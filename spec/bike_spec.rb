require 'bike'

describe Bike do

    bike = Bike.new

    it 'should state if bike is working or not' do
        expect(bike.working?).to eq true
        expect(bike).to respond_to(:broken=)
        expect {bike.broken = true}.to change {bike.working?}
    end

  # three expectations... should be three clearly separated test cases,
  # with single expection in each test
  # i.e. 'has broken attribute which can be set to true or false'
    it 'can be reported as broken' do
      subject.report_broken
      expect(subject).to be_broken
    end
end
