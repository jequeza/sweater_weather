class Credit
  attr_reader :source,
              :author,
              :logo

  def initialize(data)
    @source = data[:links][:html]
    @author = data[:username]
    @logo = data[:profile_image][:small]
  end
end