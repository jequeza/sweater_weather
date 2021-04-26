class TechSalaries
  attr_reader :title,
              :max,
              :min

  def initialize(data)
    @title = data[:job][:title]
    @min = format_salary(data[:salary_percentiles][:percentile_25])
    @max = format_salary(data[:salary_percentiles][:percentile_75])
  end

  def format_salary(salary)
    sprintf("$%2.2f", salary)
  end
end