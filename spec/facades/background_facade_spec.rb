require "rails_helper"

describe BackgroundFacade do
  context 'instance methods' do
    context '#location_image' do
      it 'should return random image for given location' do
        location = 'denver,co'

        back_facade = BackgroundFacade.new(location)
        expected = 'https://farm8.staticflickr.com/7477/28722140740_04d903e403_o.jpg'

        expect(back_facade.location_image).to eq(expected)
      end
    end
  end
end
