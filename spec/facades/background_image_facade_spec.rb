require 'rails_helper'

RSpec.describe BackgroundImageFacade do
  describe "class methods" do
    describe "::find_image" do
      it "returns an image object from the given keyword", :vcr do
        keyword = 'austin,tx'

        background = BackgroundImageFacade.find_image(keyword)
        expect(background).to be_an Image
        expect(background.credit).to be_a Credit
        expect(background.image).to be_an ImageUrl
        expect(background.id).to be_nil
        expect(background.image.location).to eq(keyword)
      end
    end
  end
end