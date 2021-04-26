require 'rails_helper'

RSpec.describe SalariesService do
  describe "class methods" do
    describe "::get_salaries" do
      it "returns tech job salaries for given location" do
        location = 'austin'

        salaries_info = SalariesService.get_salaries(location)
        expect(salaries_info).to be_a Hash
        expect(salaries_info).to have_key(:salaries)
        expect(salaries_info[:salaries]).to be_an Array
        expect(salaries_info[:salaries].first).to have_key(:job)
        expect(salaries_info[:salaries].first).to have_key(:salary_percentiles)
        expect(salaries_info[:salaries].first[:job][:title]).to be_a String
        expect(salaries_info[:salaries].first[:salary_percentiles][:percentile_25]).to be_a Float
      end
    end
  end
end