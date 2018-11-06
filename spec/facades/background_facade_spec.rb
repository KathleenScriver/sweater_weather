require "rails_helper"

describe BackgroundFacade do
  context 'instance methods' do
    context '#location_image' do
      it 'should return random image for given location' do
        location = 'denver,co'

        back_facade = BackgroundFacade.new(location)

        expect(back_facade.location_image).to include('.jpg')
      end
    end
  end
end
