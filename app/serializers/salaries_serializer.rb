class SalariesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :destination, :forecast, :salaries
end