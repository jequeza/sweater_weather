require 'rails_helper'

RSpec.describe ImageUrl do
  it "exists" do
    data = {:urls=>
      {:raw=>
        "https://www.google.com",
       :full=>
        "https://images.unsplash.com/photo-1610411084826-5c980e287458?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=85",
       :regular=>
        "https://images.unsplash.com/photo-1610411084826-5c980e287458?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=1080",
       :small=>
        "https://images.unsplash.com/photo-1610411084826-5c980e287458?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=400",
       :thumb=>
        "https://images.unsplash.com/photo-1610411084826-5c980e287458?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=200"},
     :links=>
      {:self=>"https://api.unsplash.com/photos/Z53D0_77krE",
       :html=>"https://unsplash.com/photos/Z53D0_77krE",
       :download=>"https://unsplash.com/photos/Z53D0_77krE/download",
       :download_location=>
        "https://api.unsplash.com/photos/Z53D0_77krE/download?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ"},
     :user=>
      {:id=>"7vaZ99fSB5o",
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
       :for_hire=>true},
     :tags=>
      [{:type=>"landing_page",
        :title=>"car",
        :source=>
         {:ancestry=>
           {:type=>{:slug=>"images", :pretty_slug=>"Images"},
            :category=>{:slug=>"things", :pretty_slug=>"Things"},
            :subcategory=>{:slug=>"car", :pretty_slug=>"Car"}},
          :title=>"Car Images & Pictures",
          :subtitle=>"Download free car images",
          :description=>"Choose from a curated selection of car photos. Always free on Unsplash.",
          :meta_title=>"Best 500+ Car Photos [Spectacular] | Download Car Images & Pictures - Unsplash",
          :meta_description=>"Choose from hundreds of free car pictures. Download HD car photos for free on Unsplash.",
          :cover_photo=>
           {:id=>"m3m-lnR90uM",
            :created_at=>"2017-04-14T00:59:12-04:00",
            :updated_at=>"2021-04-19T09:01:53-04:00",
            :promoted_at=>"2017-04-14T13:20:15-04:00",
            :width=>5357,
            :height=>3164,
            :color=>"#262640",
            :blur_hash=>"L95Y4=I9Mw%NWAj?j]a}8^%hxvIA",
            :description=>
             "I shot this while doing a job for a luxury automotive storage facility in Baltimore, MD. I wanted to create an ominous sense of intrigue, giving the feeling of a space that was both expansive and enclosed. I enjoy the journey my eyes take from the focal point of the headlamps to the contours of the Camero’s body, and then to the backdrop of stacked automobiles.",
            :alt_description=>"white car",
            :urls=>
             {:raw=>"https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-1.2.1",
              :full=>"https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb",
              :regular=>
               "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
              :small=>
               "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max",
              :thumb=>
               "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"},
            :links=>
             {:self=>"https://api.unsplash.com/photos/m3m-lnR90uM",
              :html=>"https://unsplash.com/photos/m3m-lnR90uM",
              :download=>"https://unsplash.com/photos/m3m-lnR90uM/download",
              :download_location=>"https://api.unsplash.com/photos/m3m-lnR90uM/download"},
            :categories=>[],
            :likes=>1685,
            :liked_by_user=>false,
            :current_user_collections=>[],
            :sponsorship=>nil,
            :user=>
             {:id=>"9aTMQdp_Djo",
              :updated_at=>"2021-04-14T01:32:44-04:00",
              :username=>"peterbroomfield",
              :name=>"Peter Broomfield",
              :first_name=>"Peter",
              :last_name=>"Broomfield",
              :twitter_username=>nil,
              :portfolio_url=>"http://workingdesignstudio.com/",
              :bio=>nil,
              :location=>"Baltimore, MD",
              :links=>
               {:self=>"https://api.unsplash.com/users/peterbroomfield",
                :html=>"https://unsplash.com/@peterbroomfield",
                :photos=>"https://api.unsplash.com/users/peterbroomfield/photos",
                :likes=>"https://api.unsplash.com/users/peterbroomfield/likes",
                :portfolio=>"https://api.unsplash.com/users/peterbroomfield/portfolio",
                :following=>"https://api.unsplash.com/users/peterbroomfield/following",
                :followers=>"https://api.unsplash.com/users/peterbroomfield/followers"},
              :profile_image=>
               {:small=>
                 "https://images.unsplash.com/profile-fb-1484539966-12de6566b969.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
                :medium=>
                 "https://images.unsplash.com/profile-fb-1484539966-12de6566b969.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
                :large=>
                 "https://images.unsplash.com/profile-fb-1484539966-12de6566b969.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"},
              :instagram_username=>"pnbroom",
              :total_collections=>36,
              :total_likes=>120,
              :total_photos=>1,
              :accepted_tos=>true,
              :for_hire=>false}}}}]}

    location = 'chicago,il'

    image_url = ImageUrl.new(data, location)
    expect(image_url).to be_a ImageUrl
    expect(image_url.image_url).to be_a String
    expect(image_url.location).to be_a String
    expect(image_url.location).to eq('chicago,il')
    expect(image_url.image_url).to eq("https://www.google.com")
  end
end