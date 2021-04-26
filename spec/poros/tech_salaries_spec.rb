require 'rails_helper'

RSpec.describe TechSalaries do
  it "exists" do
    data = {:job=>{:id=>"DATA-ANALYST", :title=>"Data Analyst"},
            :salary_percentiles=>{:percentile_25=>48238.13431895125, :percentile_50=>58055.14160627166, :percentile_75=>69870.02118778319}}


    tech_salary = TechSalaries.new(data)

    expect(tech_salary).to be_a TechSalaries
    expect(tech_salary.title).to eq("Data Analyst")
    expect(tech_salary.max).to eq("$69870.02")
    expect(tech_salary.min).to eq("$48238.13")
  end
end