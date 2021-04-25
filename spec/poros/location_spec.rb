require 'rails_helper'

RSpec.describe Location do
  it "exists" do
    data = {:info=>
  {:statuscode=>0,
   :copyright=>
    {:text=>"© 2021 MapQuest, Inc.", :imageUrl=>"http://api.mqcdn.com/res/mqlogo.gif", :imageAltText=>"© 2021 MapQuest, Inc."},
   :messages=>[]},
 :options=>{:maxResults=>-1, :thumbMaps=>true, :ignoreLatLngInput=>false},
 :results=>
  [{:providedLocation=>{:location=>"denver,co"},
    :locations=>
     [{:street=>"",
       :adminArea6=>"",
       :adminArea6Type=>"Neighborhood",
       :adminArea5=>"Denver",
       :adminArea5Type=>"City",
       :adminArea4=>"Denver County",
       :adminArea4Type=>"County",
       :adminArea3=>"CO",
       :adminArea3Type=>"State",
       :adminArea1=>"US",
       :adminArea1Type=>"Country",
       :postalCode=>"",
       :geocodeQualityCode=>"A5XAX",
       :geocodeQuality=>"CITY",
       :dragPoint=>false,
       :sideOfStreet=>"N",
       :linkId=>"282041090",
       :unknownInput=>"",
       :type=>"s",
       :latLng=>{:lat=>39.738453, :lng=>-104.984853},
       :displayLatLng=>{:lat=>39.738453, :lng=>-104.984853},
       :mapUrl=>
        "http://www.mapquestapi.com/staticmap/v5/map?key=ZOlULFh8b0k6sjHOc5ABBA0vud0sTXaG&type=map&size=225,160&locations=39.738453,-104.984853|marker-sm-50318A-1&scalebar=true&zoom=12&rand=1632853661"},
      {:street=>"",
       :adminArea6=>"",
       :adminArea6Type=>"Neighborhood",
       :adminArea5=>"",
       :adminArea5Type=>"City",
       :adminArea4=>"Denver County",
       :adminArea4Type=>"County",
       :adminArea3=>"CO",
       :adminArea3Type=>"State",
       :adminArea1=>"US",
       :adminArea1Type=>"Country",
       :postalCode=>"",
       :geocodeQualityCode=>"A4XAX",
       :geocodeQuality=>"COUNTY",
       :dragPoint=>false,
       :sideOfStreet=>"N",
       :linkId=>"282932003",
       :unknownInput=>"",
       :type=>"s",
       :latLng=>{:lat=>39.738453, :lng=>-104.984853},
       :displayLatLng=>{:lat=>39.738453, :lng=>-104.984853},
       :mapUrl=>
        "http://www.mapquestapi.com/staticmap/v5/map?key=ZOlULFh8b0k6sjHOc5ABBA0vud0sTXaG&type=map&size=225,160&locations=39.738453,-104.984853|marker-sm-50318A-2&scalebar=true&zoom=9&rand=810797580"}]}]}

    location = Location.new(data)

    expect(location).to be_a Location
    expect(location.latitude).to eq(39.738453)
    expect(location.latitude).to be_a Float
    expect(location.longitude).to eq(-104.984853)
    expect(location.longitude).to be_a Float
  end
end