require 'rails_helper'

RSpec.describe Image do
  it "exists" do
    data = {:total=>4302,
 :total_pages=>431,
 :results=>
  [{:id=>"Z53D0_77krE",
    :created_at=>"2021-01-11T19:31:10-05:00",
    :updated_at=>"2021-04-25T17:17:55-04:00",
    :promoted_at=>nil,
    :width=>3712,
    :height=>5568,
    :color=>"#402626",
    :blur_hash=>"LABMlR%h9aS$?w.8tStR0Lx^?c%M",
    :description=>"INSTAGRAM: SARRAMPHOTOGRAPHY",
    :alt_description=>"man in black jacket standing beside brown mercedes benz sedan",
    :urls=>
     {:raw=>
       "https://images.unsplash.com/photo-1610411084826-5c980e287458?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1",
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
    :categories=>[],
    :likes=>0,
    :liked_by_user=>false,
    :current_user_collections=>[],
    :sponsorship=>nil,
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
             :for_hire=>false}}}},
      {:type=>"search", :title=>"automobile"},
      {:type=>"search", :title=>"transportation"}]},
   {:id=>"_B8B3IqICtA",
    :created_at=>"2021-01-11T19:23:07-05:00",
    :updated_at=>"2021-04-26T19:19:34-04:00",
    :promoted_at=>nil,
    :width=>3712,
    :height=>5568,
    :color=>"#c0c0c0",
    :blur_hash=>"LZGv6Ubc%MM_~qM{WAofEQbIM{oe",
    :description=>"INSTAGRAM: SARRAMPHOTOGRAPHY",
    :alt_description=>"man in black and white hoodie wearing green knit cap",
    :urls=>
     {:raw=>
       "https://images.unsplash.com/photo-1610410543867-18e2e333637d?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwyfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1",
      :full=>
       "https://images.unsplash.com/photo-1610410543867-18e2e333637d?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwyfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=85",
      :regular=>
       "https://images.unsplash.com/photo-1610410543867-18e2e333637d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwyfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=1080",
      :small=>
       "https://images.unsplash.com/photo-1610410543867-18e2e333637d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwyfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=400",
      :thumb=>
       "https://images.unsplash.com/photo-1610410543867-18e2e333637d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwyfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=200"},
    :links=>
     {:self=>"https://api.unsplash.com/photos/_B8B3IqICtA",
      :html=>"https://unsplash.com/photos/_B8B3IqICtA",
      :download=>"https://unsplash.com/photos/_B8B3IqICtA/download",
      :download_location=>
       "https://api.unsplash.com/photos/_B8B3IqICtA/download?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwyfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ"},
    :categories=>[],
    :likes=>1,
    :liked_by_user=>false,
    :current_user_collections=>[],
    :sponsorship=>nil,
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
    :tags=>[]},
   {:id=>"hdzGZRCYMSU",
    :created_at=>"2020-09-13T19:54:14-04:00",
    :updated_at=>"2021-04-26T02:16:57-04:00",
    :promoted_at=>nil,
    :width=>3888,
    :height=>5184,
    :color=>"#d9f3f3",
    :blur_hash=>"LsG,S1WCtRkC02axWBays:adV@js",
    :description=>nil,
    :alt_description=>"man in blue jacket and black pants riding on snowboard during daytime",
    :urls=>
     {:raw=>
       "https://images.unsplash.com/photo-1600041161228-519e6dd27bac?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwzfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1",
      :full=>
       "https://images.unsplash.com/photo-1600041161228-519e6dd27bac?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwzfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=85",
      :regular=>
       "https://images.unsplash.com/photo-1600041161228-519e6dd27bac?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwzfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=1080",
      :small=>
       "https://images.unsplash.com/photo-1600041161228-519e6dd27bac?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwzfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=400",
      :thumb=>
       "https://images.unsplash.com/photo-1600041161228-519e6dd27bac?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwzfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=200"},
    :links=>
     {:self=>"https://api.unsplash.com/photos/hdzGZRCYMSU",
      :html=>"https://unsplash.com/photos/hdzGZRCYMSU",
      :download=>"https://unsplash.com/photos/hdzGZRCYMSU/download",
      :download_location=>
       "https://api.unsplash.com/photos/hdzGZRCYMSU/download?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwzfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ"},
    :categories=>[],
    :likes=>3,
    :liked_by_user=>false,
    :current_user_collections=>[],
    :sponsorship=>nil,
    :user=>
     {:id=>"uMT_KSln-6U",
      :updated_at=>"2021-04-25T04:53:36-04:00",
      :username=>"mikekilcoyne",
      :name=>"Michael Kilcoyne",
      :first_name=>"Michael",
      :last_name=>"Kilcoyne",
      :twitter_username=>"mikekilcoyne",
      :portfolio_url=>"http://mikekilcoyne.com",
      :bio=>"I love capturing people, animal, places, and things in their element. ",
      :location=>"Istanbul, Turkey",
      :links=>
       {:self=>"https://api.unsplash.com/users/mikekilcoyne",
        :html=>"https://unsplash.com/@mikekilcoyne",
        :photos=>"https://api.unsplash.com/users/mikekilcoyne/photos",
        :likes=>"https://api.unsplash.com/users/mikekilcoyne/likes",
        :portfolio=>"https://api.unsplash.com/users/mikekilcoyne/portfolio",
        :following=>"https://api.unsplash.com/users/mikekilcoyne/following",
        :followers=>"https://api.unsplash.com/users/mikekilcoyne/followers"},
      :profile_image=>
       {:small=>
         "https://images.unsplash.com/profile-1598778372638-601d72333823image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
        :medium=>
         "https://images.unsplash.com/profile-1598778372638-601d72333823image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
        :large=>
         "https://images.unsplash.com/profile-1598778372638-601d72333823image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"},
      :instagram_username=>"itsmemikekilcoyne",
      :total_collections=>1,
      :total_likes=>3,
      :total_photos=>78,
      :accepted_tos=>true,
      :for_hire=>false},
    :tags=>[]},
   {:id=>"RgGA5egI95A",
    :created_at=>"2021-01-11T19:53:19-05:00",
    :updated_at=>"2021-04-26T02:30:05-04:00",
    :promoted_at=>nil,
    :width=>3712,
    :height=>5568,
    :color=>"#73590c",
    :blur_hash=>"L9GuBrGJs$-;mP.8_4$*9s+?4;Io",
    :description=>"INSTAGRAM: SARRAMPHOTOGRAPHY",
    :alt_description=>"man in gray sweater and white pants sitting on brown wooden bench",
    :urls=>
     {:raw=>
       "https://images.unsplash.com/photo-1610412327301-e4b061bf4434?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw0fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1",
      :full=>
       "https://images.unsplash.com/photo-1610412327301-e4b061bf4434?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw0fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=85",
      :regular=>
       "https://images.unsplash.com/photo-1610412327301-e4b061bf4434?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw0fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=1080",
      :small=>
       "https://images.unsplash.com/photo-1610412327301-e4b061bf4434?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw0fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=400",
      :thumb=>
       "https://images.unsplash.com/photo-1610412327301-e4b061bf4434?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw0fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=200"},
    :links=>
     {:self=>"https://api.unsplash.com/photos/RgGA5egI95A",
      :html=>"https://unsplash.com/photos/RgGA5egI95A",
      :download=>"https://unsplash.com/photos/RgGA5egI95A/download",
      :download_location=>
       "https://api.unsplash.com/photos/RgGA5egI95A/download?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw0fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ"},
    :categories=>[],
    :likes=>0,
    :liked_by_user=>false,
    :current_user_collections=>[],
    :sponsorship=>nil,
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
    :tags=>[{:type=>"search", :title=>"apparel"}, {:type=>"search", :title=>"clothing"}, {:type=>"search", :title=>"footwear"}]},
   {:id=>"wfDlJlr18R4",
    :created_at=>"2020-06-20T11:06:47-04:00",
    :updated_at=>"2021-04-26T00:14:55-04:00",
    :promoted_at=>nil,
    :width=>4096,
    :height=>3456,
    :color=>"#8c7340",
    :blur_hash=>"LoGSM]s+t6t7%%xWt6kCxFkCoff5",
    :description=>nil,
    :alt_description=>"person in red hoodie sitting on bench near body of water during daytime",
    :urls=>
     {:raw=>
       "https://images.unsplash.com/photo-1592664749149-4ddcd4453def?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw1fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1",
      :full=>
       "https://images.unsplash.com/photo-1592664749149-4ddcd4453def?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw1fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=85",
      :regular=>
       "https://images.unsplash.com/photo-1592664749149-4ddcd4453def?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw1fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=1080",
      :small=>
       "https://images.unsplash.com/photo-1592664749149-4ddcd4453def?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw1fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=400",
      :thumb=>
       "https://images.unsplash.com/photo-1592664749149-4ddcd4453def?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw1fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=200"},
    :links=>
     {:self=>"https://api.unsplash.com/photos/wfDlJlr18R4",
      :html=>"https://unsplash.com/photos/wfDlJlr18R4",
      :download=>"https://unsplash.com/photos/wfDlJlr18R4/download",
      :download_location=>
       "https://api.unsplash.com/photos/wfDlJlr18R4/download?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw1fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ"},
    :categories=>[],
    :likes=>13,
    :liked_by_user=>false,
    :current_user_collections=>[],
    :sponsorship=>nil,
    :user=>
     {:id=>"B2JeNe-9uJ4",
      :updated_at=>"2021-04-22T08:35:42-04:00",
      :username=>"mudaum",
      :name=>"Guilherme Garcia",
      :first_name=>"Guilherme",
      :last_name=>"Garcia",
      :twitter_username=>nil,
      :portfolio_url=>"https://www.instagram.com/mudaum",
      :bio=>nil,
      :location=>"Brazil",
      :links=>
       {:self=>"https://api.unsplash.com/users/mudaum",
        :html=>"https://unsplash.com/@mudaum",
        :photos=>"https://api.unsplash.com/users/mudaum/photos",
        :likes=>"https://api.unsplash.com/users/mudaum/likes",
        :portfolio=>"https://api.unsplash.com/users/mudaum/portfolio",
        :following=>"https://api.unsplash.com/users/mudaum/following",
        :followers=>"https://api.unsplash.com/users/mudaum/followers"},
      :profile_image=>
       {:small=>
         "https://images.unsplash.com/profile-1592665799632-cc4f6df67fd3image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
        :medium=>
         "https://images.unsplash.com/profile-1592665799632-cc4f6df67fd3image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
        :large=>
         "https://images.unsplash.com/profile-1592665799632-cc4f6df67fd3image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"},
      :instagram_username=>"mudaum",
      :total_collections=>0,
      :total_likes=>0,
      :total_photos=>29,
      :accepted_tos=>true,
      :for_hire=>false},
    :tags=>[]},
   {:id=>"29N29M6O9nU",
    :created_at=>"2021-01-11T20:07:08-05:00",
    :updated_at=>"2021-04-25T23:20:07-04:00",
    :promoted_at=>nil,
    :width=>3712,
    :height=>5568,
    :color=>"#f3f3f3",
    :blur_hash=>"L?HLk-jvk8kB~Wofaeju-;ofjZjb",
    :description=>"INSTAGRAM: SARRAMPHOTOGRAPHY",
    :alt_description=>"smiling man in blue hoodie",
    :urls=>
     {:raw=>
       "https://images.unsplash.com/photo-1610413507366-d6a23a34ebb3?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw2fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1",
      :full=>
       "https://images.unsplash.com/photo-1610413507366-d6a23a34ebb3?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw2fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=85",
      :regular=>
       "https://images.unsplash.com/photo-1610413507366-d6a23a34ebb3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw2fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=1080",
      :small=>
       "https://images.unsplash.com/photo-1610413507366-d6a23a34ebb3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw2fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=400",
      :thumb=>
       "https://images.unsplash.com/photo-1610413507366-d6a23a34ebb3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw2fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=200"},
    :links=>
     {:self=>"https://api.unsplash.com/photos/29N29M6O9nU",
      :html=>"https://unsplash.com/photos/29N29M6O9nU",
      :download=>"https://unsplash.com/photos/29N29M6O9nU/download",
      :download_location=>
       "https://api.unsplash.com/photos/29N29M6O9nU/download?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw2fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ"},
    :categories=>[],
    :likes=>1,
    :liked_by_user=>false,
    :current_user_collections=>[],
    :sponsorship=>nil,
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
    :tags=>[]},
   {:id=>"iCqzO1djFqc",
    :created_at=>"2021-04-05T11:52:47-04:00",
    :updated_at=>"2021-04-26T09:23:45-04:00",
    :promoted_at=>nil,
    :width=>2674,
    :height=>4010,
    :color=>"#262626",
    :blur_hash=>"LB9@bQNHT0t79F-;%#tR_NxukXay",
    :description=>"INSTAGRAM: SARRAMPHOTOGRAPHY",
    :alt_description=>"man in black and white hoodie",
    :urls=>
     {:raw=>
       "https://images.unsplash.com/photo-1617637742665-c0ba7e1961d2?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw3fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1",
      :full=>
       "https://images.unsplash.com/photo-1617637742665-c0ba7e1961d2?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw3fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=85",
      :regular=>
       "https://images.unsplash.com/photo-1617637742665-c0ba7e1961d2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw3fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=1080",
      :small=>
       "https://images.unsplash.com/photo-1617637742665-c0ba7e1961d2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw3fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=400",
      :thumb=>
       "https://images.unsplash.com/photo-1617637742665-c0ba7e1961d2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw3fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=200"},
    :links=>
     {:self=>"https://api.unsplash.com/photos/iCqzO1djFqc",
      :html=>"https://unsplash.com/photos/iCqzO1djFqc",
      :download=>"https://unsplash.com/photos/iCqzO1djFqc/download",
      :download_location=>
       "https://api.unsplash.com/photos/iCqzO1djFqc/download?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw3fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ"},
    :categories=>[],
    :likes=>0,
    :liked_by_user=>false,
    :current_user_collections=>[],
    :sponsorship=>nil,
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
    :tags=>[]},
   {:id=>"cQKn3fl4s5w",
    :created_at=>"2020-11-10T13:40:05-05:00",
    :updated_at=>"2021-04-25T22:24:38-04:00",
    :promoted_at=>nil,
    :width=>3712,
    :height=>5568,
    :color=>"#a6d9f3",
    :blur_hash=>"LdFsPuH;n,I;F|MbozxaM{%Mt7WB",
    :description=>"INSTAGRAM: SARRAMPHOTOGRAPHY\n",
    :alt_description=>"text",
    :urls=>
     {:raw=>
       "https://images.unsplash.com/photo-1605033532441-30378efcd7ef?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw4fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1",
      :full=>
       "https://images.unsplash.com/photo-1605033532441-30378efcd7ef?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw4fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=85",
      :regular=>
       "https://images.unsplash.com/photo-1605033532441-30378efcd7ef?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw4fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=1080",
      :small=>
       "https://images.unsplash.com/photo-1605033532441-30378efcd7ef?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw4fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=400",
      :thumb=>
       "https://images.unsplash.com/photo-1605033532441-30378efcd7ef?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw4fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=200"},
    :links=>
     {:self=>"https://api.unsplash.com/photos/cQKn3fl4s5w",
      :html=>"https://unsplash.com/photos/cQKn3fl4s5w",
      :download=>"https://unsplash.com/photos/cQKn3fl4s5w/download",
      :download_location=>
       "https://api.unsplash.com/photos/cQKn3fl4s5w/download?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw4fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ"},
    :categories=>[],
    :likes=>6,
    :liked_by_user=>false,
    :current_user_collections=>[],
    :sponsorship=>nil,
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
    :tags=>[{:type=>"search", :title=>"hair"}, {:type=>"search", :title=>"sunglasses"}, {:type=>"search", :title=>"accessory"}]},
   {:id=>"s9DmLgLdugg",
    :created_at=>"2020-01-31T14:38:48-05:00",
    :updated_at=>"2021-04-26T07:12:30-04:00",
    :promoted_at=>nil,
    :width=>3840,
    :height=>5120,
    :color=>"#262626",
    :blur_hash=>"LnD0yDr;R-j??wjDR*axpJWAV?f6",
    :description=>"Wall painting in Denver. ",
    :alt_description=>"man riding horse holding a flag of america painting",
    :urls=>
     {:raw=>
       "https://images.unsplash.com/photo-1580499518184-89bd0b1b061d?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw5fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1",
      :full=>
       "https://images.unsplash.com/photo-1580499518184-89bd0b1b061d?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw5fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=85",
      :regular=>
       "https://images.unsplash.com/photo-1580499518184-89bd0b1b061d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw5fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=1080",
      :small=>
       "https://images.unsplash.com/photo-1580499518184-89bd0b1b061d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw5fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=400",
      :thumb=>
       "https://images.unsplash.com/photo-1580499518184-89bd0b1b061d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw5fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1&q=80&w=200"},
    :links=>
     {:self=>"https://api.unsplash.com/photos/s9DmLgLdugg",
      :html=>"https://unsplash.com/photos/s9DmLgLdugg",
      :download=>"https://unsplash.com/photos/s9DmLgLdugg/download",
      :download_location=>
       "https://api.unsplash.com/photos/s9DmLgLdugg/download?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHw5fHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ"},
    :categories=>[],
    :likes=>38,
    :liked_by_user=>false,
    :current_user_collections=>[],
    :sponsorship=>nil,
    :user=>
     {:id=>"jVGnjy5TC54",
      :updated_at=>"2021-04-26T09:54:54-04:00",
      :username=>"jenspeter",
      :name=>"Jens Peter Olesen",
      :first_name=>"Jens Peter",
      :last_name=>"Olesen",
      :twitter_username=>"creaticdesign",
      :portfolio_url=>"https://www.creatic.design",
      :bio=>"Graphic designer and world traveller.",
      :location=>"World traveller",
      :links=>
       {:self=>"https://api.unsplash.com/users/jenspeter",
        :html=>"https://unsplash.com/@jenspeter",
        :photos=>"https://api.unsplash.com/users/jenspeter/photos",
        :likes=>"https://api.unsplash.com/users/jenspeter/likes",
        :portfolio=>"https://api.unsplash.com/users/jenspeter/portfolio",
        :following=>"https://api.unsplash.com/users/jenspeter/following",
        :followers=>"https://api.unsplash.com/users/jenspeter/followers"},
      :profile_image=>
       {:small=>
         "https://images.unsplash.com/profile-1554546870692-3c6ee502a86b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
        :medium=>
         "https://images.unsplash.com/profile-1554546870692-3c6ee502a86b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
        :large=>
         "https://images.unsplash.com/profile-1554546870692-3c6ee502a86b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"},
      :instagram_username=>"norouteexplore",
      :total_collections=>16,
      :total_likes=>412,
      :total_photos=>48,
      :accepted_tos=>true,
      :for_hire=>false},
    :tags=>
     [{:type=>"search", :title=>"denver"},
      {:type=>"landing_page",
       :title=>"person",
       :source=>
        {:ancestry=>{:type=>{:slug=>"images", :pretty_slug=>"Images"}, :category=>{:slug=>"people", :pretty_slug=>"People"}},
         :title=>"People Images & Pictures",
         :subtitle=>"Download free people images",
         :description=>
          "Human faces speak to us in a way that language cannot. Everyone recognize a smile, a frown, tears. Unsplash has the finest selection of people images on the web: high-def and curated for quality. Family, friends, men, women, Unsplash has photos for all.",
         :meta_title=>"People Pictures [HQ] | Download Free Images on Unsplash",
         :meta_description=>"Choose from hundreds of free people pictures. Download HD people photos for free on Unsplash.",
         :cover_photo=>
          {:id=>"PmNjS6b3XP4",
           :created_at=>"2017-04-20T18:04:07-04:00",
           :updated_at=>"2021-04-16T03:01:24-04:00",
           :promoted_at=>"2017-04-21T12:00:49-04:00",
           :width=>4630,
           :height=>3087,
           :color=>"#a6d9d9",
           :blur_hash=>"LjI=x%:QUbv#NHWVa}kCt7jFjZfQ",
           :description=>"Summer in France with baby",
           :alt_description=>"woman carrying baby while walking",
           :urls=>
            {:raw=>"https://images.unsplash.com/photo-1492725764893-90b379c2b6e7?ixlib=rb-1.2.1",
             :full=>"https://images.unsplash.com/photo-1492725764893-90b379c2b6e7?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb",
             :regular=>
              "https://images.unsplash.com/photo-1492725764893-90b379c2b6e7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
             :small=>
              "https://images.unsplash.com/photo-1492725764893-90b379c2b6e7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max",
             :thumb=>
              "https://images.unsplash.com/photo-1492725764893-90b379c2b6e7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"},
           :links=>
            {:self=>"https://api.unsplash.com/photos/PmNjS6b3XP4",
             :html=>"https://unsplash.com/photos/PmNjS6b3XP4",
             :download=>"https://unsplash.com/photos/PmNjS6b3XP4/download",
             :download_location=>"https://api.unsplash.com/photos/PmNjS6b3XP4/download"},
           :categories=>[],
           :likes=>2074,
           :liked_by_user=>false,
           :current_user_collections=>[],
           :sponsorship=>nil,
           :user=>
            {:id=>"7S_pCRiCiQo",
             :updated_at=>"2021-04-15T23:44:52-04:00",
             :username=>"thedakotacorbin",
             :name=>"Dakota Corbin",
             :first_name=>"Dakota",
             :last_name=>"Corbin",
             :twitter_username=>"thedakotacorbin",
             :portfolio_url=>"http://www.dakotacorbin.com",
             :bio=>"Husband | Father | Creator",
             :location=>"Utah, United States",
             :links=>
              {:self=>"https://api.unsplash.com/users/thedakotacorbin",
               :html=>"https://unsplash.com/@thedakotacorbin",
               :photos=>"https://api.unsplash.com/users/thedakotacorbin/photos",
               :likes=>"https://api.unsplash.com/users/thedakotacorbin/likes",
               :portfolio=>"https://api.unsplash.com/users/thedakotacorbin/portfolio",
               :following=>"https://api.unsplash.com/users/thedakotacorbin/following",
               :followers=>"https://api.unsplash.com/users/thedakotacorbin/followers"},
             :profile_image=>
              {:small=>
                "https://images.unsplash.com/profile-1593623494202-55ffc4dc725cimage?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
               :medium=>
                "https://images.unsplash.com/profile-1593623494202-55ffc4dc725cimage?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
               :large=>
                "https://images.unsplash.com/profile-1593623494202-55ffc4dc725cimage?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"},
             :instagram_username=>"thedakotacorbin",
             :total_collections=>0,
             :total_likes=>1,
             :total_photos=>44,
             :accepted_tos=>true,
             :for_hire=>false}}}},
      {:type=>"search", :title=>"human"}]},
   {:id=>"pBtdIO99UIc",
    :created_at=>"2019-10-08T21:44:07-04:00",
    :updated_at=>"2021-04-25T22:09:28-04:00",
    :promoted_at=>nil,
    :width=>1944,
    :height=>2592,
    :color=>"#0c2659",
    :blur_hash=>"LZ7U.CxbWAR+KUSPf6oLVBafkDj]",
    :description=>"Colin McIntosh sheetsgiggles.com",
    :alt_description=>"wide-angle photography of buildings during daytime",
    :urls=>
     {:raw=>
       "https://images.unsplash.com/photo-1570585429632-e8b74372a3ed?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxMHx8ZGVudmVyJTJDY298ZW58MHx8fHwxNjE5NDg1NDI0&ixlib=rb-1.2.1",
      :full=>
       "https://images.unsplash.com/photo-1570585429632-e8b74372a3ed?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxMHx8ZGVudmVyJTJDY298ZW58MHx8fHwxNjE5NDg1NDI0&ixlib=rb-1.2.1&q=85",
      :regular=>
       "https://images.unsplash.com/photo-1570585429632-e8b74372a3ed?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxMHx8ZGVudmVyJTJDY298ZW58MHx8fHwxNjE5NDg1NDI0&ixlib=rb-1.2.1&q=80&w=1080",
      :small=>
       "https://images.unsplash.com/photo-1570585429632-e8b74372a3ed?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxMHx8ZGVudmVyJTJDY298ZW58MHx8fHwxNjE5NDg1NDI0&ixlib=rb-1.2.1&q=80&w=400",
      :thumb=>
       "https://images.unsplash.com/photo-1570585429632-e8b74372a3ed?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxMHx8ZGVudmVyJTJDY298ZW58MHx8fHwxNjE5NDg1NDI0&ixlib=rb-1.2.1&q=80&w=200"},
    :links=>
     {:self=>"https://api.unsplash.com/photos/pBtdIO99UIc",
      :html=>"https://unsplash.com/photos/pBtdIO99UIc",
      :download=>"https://unsplash.com/photos/pBtdIO99UIc/download",
      :download_location=>
       "https://api.unsplash.com/photos/pBtdIO99UIc/download?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxMHx8ZGVudmVyJTJDY298ZW58MHx8fHwxNjE5NDg1NDI0"},
    :categories=>[],
    :likes=>34,
    :liked_by_user=>false,
    :current_user_collections=>[],
    :sponsorship=>nil,
    :user=>
     {:id=>"uCjRDd85Gm8",
      :updated_at=>"2021-04-26T13:05:24-04:00",
      :username=>"melissamullinator",
      :name=>"Melissa Mullin",
      :first_name=>"Melissa",
      :last_name=>"Mullin",
      :twitter_username=>"thehealthymel",
      :portfolio_url=>"http://Thehealthymelissa.com",
      :bio=>"Tag me on insta @thehealthymelissa",
      :location=>"Florida",
      :links=>
       {:self=>"https://api.unsplash.com/users/melissamullinator",
        :html=>"https://unsplash.com/@melissamullinator",
        :photos=>"https://api.unsplash.com/users/melissamullinator/photos",
        :likes=>"https://api.unsplash.com/users/melissamullinator/likes",
        :portfolio=>"https://api.unsplash.com/users/melissamullinator/portfolio",
        :following=>"https://api.unsplash.com/users/melissamullinator/following",
        :followers=>"https://api.unsplash.com/users/melissamullinator/followers"},
      :profile_image=>
       {:small=>
         "https://images.unsplash.com/profile-1618792129584-bcb060131f43image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
        :medium=>
         "https://images.unsplash.com/profile-1618792129584-bcb060131f43image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
        :large=>
         "https://images.unsplash.com/profile-1618792129584-bcb060131f43image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"},
      :instagram_username=>"thehealthymelissa",
      :total_collections=>4,
      :total_likes=>1281,
      :total_photos=>124,
      :accepted_tos=>true,
      :for_hire=>false},
    :tags=>
     [{:type=>"search", :title=>"banister"}, {:type=>"search", :title=>"handrail"}, {:type=>"search", :title=>"office building"}]}]}


    location = 'denver,co'

    image = Image.new(data, location)

    expect(image).to be_an Image
    expect(image.credit).to be_a Credit
    expect(image.image).to be_an ImageUrl
    expect(image.credit.author).to eq("nima_sarram")
    expect(image.credit.source).to eq("https://unsplash.com/@nima_sarram")
    expect(image.credit.logo).to eq("https://images.unsplash.com/profile-1601953490826-6eeca3f02875image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32")
    expect(image.image.image_url).to eq("https://images.unsplash.com/photo-1610411084826-5c980e287458?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MTk0ODU0MjQ&ixlib=rb-1.2.1")
    expect(image.image.location).to eq(location)
  end
end