## Sweater Weather

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
      </ul>
    </li>
    <li><a href="#rest-endpoints">ReST Endpoints</a></li>

  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

This repository is part of a service-oriented architecture for an application to plan road trips. The app will allow users to see the current weather as well as the forecasted weather at the destination.

### Built With

* [Ruby on Rails](https://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/)

<!-- GETTING STARTED -->
## Getting Started

1. Clone this repo
2. Install gem packages: `bundle install`
3. Register for a [MapQuest's Geocoding API](https://developer.mapquest.com/documentation/geocoding-api/) key
4. Register for a [OpenWeather One Call API](https://openweathermap.org/api/one-call-api) key
5. Register for a [Unsplash API](https://unsplash.com/documentation) key
6. Create and Migrate DB
```
$rails db:{create,migrate}
```
5. Install needed Figaro config
```
$bundle exec figaro install
```
6. Add environment variables to `config/application.yml`
> Sample config
```
GEO_KEY: '<Your MapQuest Key>'

WEATHER_KEY: '<Your OpenWeather Key>'

IMAGE_KEY: 'Your Unsplash Key'

```
7. Start your server!


```
$ rails s
```
### Prerequisites

* Ruby 2.5.3
* Rails 5.2.5

<!-- USAGE EXAMPLES -->

<details open>
<summary>ReST Endpoints</summary>
<br>

### GET Forecast
* Retrieve Current, Daily and Hourly Forecast for a given Location
> Required Parameters: `:location`
```
GET   /api/v1/forecast
```

<details open>
<summary>Sample Response</summary>
<br>

```
{
    "data": {
        "id": null,
        "type": "forecast",
        "attributes": {
            "id": null,
            "current_weather": {
                "datetime": "2021-04-28T08:30:51.000-05:00",
                "sunrise": "2021-04-28T06:50:04.000-05:00",
                "sunset": "2021-04-28T20:06:32.000-05:00",
                "temperature": 72.61,
                "feels_like": 73.24,
                "humidity": 78,
                "uvi": 1.04,
                "visibility": 10000,
                "conditions": "broken clouds",
                "icon": "04d"
            },
            "daily_weather": [
                {
                    "date": "2021-04-28T13:00:00.000-05:00",
                    "sunrise": "2021-04-28T06:50:04.000-05:00",
                    "sunset": "2021-04-28T20:06:32.000-05:00",
                    "max_temp": 92.95,
                    "min_temp": 71.58,
                    "conditions": "moderate rain",
                    "icon": "10d"
                },
                {
                    "date": "2021-04-29T13:00:00.000-05:00",
                    "sunrise": "2021-04-29T06:49:09.000-05:00",
                    "sunset": "2021-04-29T20:07:12.000-05:00",
                    "max_temp": 72.82,
                    "min_temp": 67.87,
                    "conditions": "heavy intensity rain",
                    "icon": "10d"
                },
                {
                    "date": "2021-04-30T13:00:00.000-05:00",
                    "sunrise": "2021-04-30T06:48:15.000-05:00",
                    "sunset": "2021-04-30T20:07:52.000-05:00",
                    "max_temp": 77.38,
                    "min_temp": 63.43,
                    "conditions": "light rain",
                    "icon": "10d"
                },
                {
                    "date": "2021-05-01T13:00:00.000-05:00",
                    "sunrise": "2021-05-01T06:47:22.000-05:00",
                    "sunset": "2021-05-01T20:08:32.000-05:00",
                    "max_temp": 75.65,
                    "min_temp": 64.89,
                    "conditions": "moderate rain",
                    "icon": "10d"
                },
                {
                    "date": "2021-05-02T13:00:00.000-05:00",
                    "sunrise": "2021-05-02T06:46:30.000-05:00",
                    "sunset": "2021-05-02T20:09:12.000-05:00",
                    "max_temp": 84.74,
                    "min_temp": 65.03,
                    "conditions": "moderate rain",
                    "icon": "10d"
                }
            ],
            "hourly_weather": [
                {
                    "time": 8,
                    "temperature": 72.36,
                    "conditions": "broken clouds",
                    "icon": "04d"
                },
                {
                    "time": 9,
                    "temperature": 72.61,
                    "conditions": "broken clouds",
                    "icon": "04d"
                },
                {
                    "time": 10,
                    "temperature": 73.58,
                    "conditions": "broken clouds",
                    "icon": "04d"
                },
                {
                    "time": 11,
                    "temperature": 76.71,
                    "conditions": "broken clouds",
                    "icon": "04d"
                },
                {
                    "time": 12,
                    "temperature": 81.27,
                    "conditions": "broken clouds",
                    "icon": "04d"
                },
                {
                    "time": 13,
                    "temperature": 86.43,
                    "conditions": "scattered clouds",
                    "icon": "03d"
                },
                {
                    "time": 14,
                    "temperature": 91.9,
                    "conditions": "few clouds",
                    "icon": "02d"
                },
                {
                    "time": 15,
                    "temperature": 92.95,
                    "conditions": "scattered clouds",
                    "icon": "03d"
                }
            ]
        }
    }
}

```

</details>

### GET Backgrounds
* Retrieve an image url that relates to a given location
> Required Parameters: `:location`
```
GET   /api/v1/backgrounds
```

<details open>
<summary>Sample Response</summary>
<br>

```
{
    "data": {
        "id": null,
        "type": "image",
        "attributes": {
            "id": null,
            "image": {
                "location": "chicago,il",
                "image_url": "https://images.unsplash.com/photo-1602276507033-1bcec514e1ef?ixid=MnwyMjY0NjF8MHwxfHNlYXJjaHwxfHxjaGljYWdvJTJDaWx8ZW58MHx8fHwxNjE5NjE2ODUw&ixlib=rb-1.2.1"
            },
            "credit": {
                "source": "https://unsplash.com/@drench777",
                "author": "drench777",
                "logo": "https://images.unsplash.com/profile-1602276888280-5bdf9bc71daeimage?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32"
            }
        }
    }
}

```

</details>

### POST User
* Creates a User and return a unique API Key for that user. Required Parameters to be sent in body request.
> Required Parameters:
`{
    "email": "john_larson1@example.com",
    "password": "pass1234",
    "password_confirmation": "pass1234"
}`
```
POST  /api/v1/users
```

<details open>
<summary>Sample Response</summary>
<br>

```
{
    "data": {
        "id": "4",
        "type": "users",
        "attributes": {
            "id": 4,
            "email": "john_larson1@example.com",
            "api_key": "5VAefzjlJdejlCX6DZqj6Q"
        }
    }
}

```

</details>

### POST Sessions
* Logs in an User and returns the user information. Required Parameters to be sent in body request.
> Required Parameters:
`{
    "email": "john_larson1@example.com",
    "password": "pass1234"
}`
```
POST  /api/v1/sessions
```

<details open>
<summary>Sample Response</summary>
<br>

```
{
    "data": {
        "id": "4",
        "type": "users",
        "attributes": {
            "id": 4,
            "email": "john_larson1@example.com",
            "api_key": "5VAefzjlJdejlCX6DZqj6Q"
        }
    }
}

```

</details>

### POST Road Trip
* Returns Road Trip information for a registered user. Required Parameters to be sent in body request.
> Required Parameters:
`{
    "origin": "Denver,CO",
    "destination": "Pueblo,CO",
    "api_key": "5VAefzjlJdejlCX6DZqj6Q"
}`
```
POST  /api/v1/road_trip
```

<details open>
<summary>Sample Response</summary>
<br>

```
{
    "data": {
        "id": null,
        "type": "roadtrip",
        "attributes": {
            "id": null,
            "start_city": "Denver,CO",
            "end_city": "Pueblo,CO",
            "travel_time": "01:44:22",
            "weather_at_eta": {
                "temperature": 45.34,
                "conditions": "few clouds"
            }
        }
    }
}

```

</details>
