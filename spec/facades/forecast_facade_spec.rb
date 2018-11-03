require "rails_helper"

describe ForecastFacade do

  subject { ForecastFacade.new("denver,co")  }

  it 'exists' do
    expect(subject).to be_a(ForecastFacade)
  end

  context 'attritubes' do
    it 'has location' do
      expect(subject.location).to eq('denver,co')
    end
  end
end
