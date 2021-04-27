require 'rails_helper'

RSpec.describe Credit do
  it "exists" do
    data = {:id=>"7vaZ99fSB5o",
             :updated_at=>"2021-04-26T11:45:05-04:00",
             :username=>"nima_sarram",
             :name=>"Nima Sarram",
             :first_name=>"Nima",
             :last_name=>"Sarram",
             :twitter_username=>nil,
             :portfolio_url=>nil,
             :bio=>"INSTAGRAM: SARRAMPHOTOGRAPHY\r\nBased out of Denver Colorado",
             :location=>"Denver, Co",
             :links=>
              {:self=>"https://api.unsplash.com/users/nima_sarram",
               :html=>"https://unsplash.com/@nima_sarram",
               :photos=>"https://api.unsplash.com/users/nima_sarram/photos",
               :likes=>"https://api.unsplash.com/users/nima_sarram/likes",
               :portfolio=>"https://api.unsplash.com/users/nima_sarram/portfolio",
               :following=>"https://api.unsplash.com/users/nima_sarram/following",
               :followers=>"https://api.unsplash.com/users/nima_sarram/followers"},
             :profile_image=>
              {:small=>
                "https://images.unsplash.com/profile-1601953490826-6eeca3f02875image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
               :medium=>
                "https://images.unsplash.com/profile-1601953490826-6eeca3f02875image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
               :large=>
                "https://images.unsplash.com/profile-1601953490826-6eeca3f02875image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"},
             :instagram_username=>"sarramphotography",
             :total_collections=>15,
             :total_likes=>21,
             :total_photos=>236,
             :accepted_tos=>true,
             :for_hire=>true}

    credit = Credit.new(data)

    expect(credit).to be_a Credit
    expect(credit.source).to be_a String
    expect(credit.author).to be_a String
    expect(credit.logo).to be_a String
    expect(credit.source).to eq("https://unsplash.com/@nima_sarram")
    expect(credit.author).to eq("nima_sarram")
    expect(credit.logo).to eq("https://images.unsplash.com/profile-1601953490826-6eeca3f02875image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32")
  end
end