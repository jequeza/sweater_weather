require 'rails_helper'

RSpec.describe SalariesService do
  describe "class methods" do
    describe "::get_salaries" do
      it "returns tech job salaries for given location" do
        location = 'austin'

        salaries_info = SalariesService.get_salaries(location)
        require "pry"; binding.pry
      end
    end
  end
end