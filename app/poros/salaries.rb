class Salaries
  attr_reader :id,
              :destination,
              :forecast,
              :salaries

  def initialize(weather_data, salaries_data, location)
    @id = id
    @destination = location
    @forecast = destination_current_weather(weather_data)
    @salaries = destination_salaries(salaries_data)
  end

  def destination_salaries(data)
    tech_titles = ['Data Analyst',
                  'Data Scientist',
                  'Mobile Developer',
                  'QA Engineer',
                  'Software Engineer',
                  'Systems Administrator',
                  'Web Developer']
    tech_jobs = []
    tech_titles.each do |title|
      data.each do |job|
        tech_jobs << job if title == job[:job][:title]
      end
    end
    tech_jobs.map do |job|
      TechSalaries.new(job)
    end
  end

  def destination_current_weather(data)
    SalariesCurrentWeather.new(data)
  end
end