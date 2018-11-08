# README

SweaterWeather is a weather app built to practice building a backend and api endpoints that will interface with a separate frontend that will consume the api endpoints and display the given data.  You can visit the deployed site here https://sweater-weather-ky.herokuapp.com

* Ruby version
  - Ruby 2.4.1
  - Rails 5.1.6

* System dependencies
  - ```gem 'fast_jsonapi'``` used to build the api's format

#### Instructions to clone down project and run on local:
      1. git clone git@github.com:KathleenYruegas/sweater_weather.git
      2. bundle install
      3. rake db:create 
        
 - External APIs Used
   - Google Geocoder API (Key needed to run app on your local, stored as ```GOOGLE_API_KEY```)                     https://developers.google.com/maps/documentation/geocoding/start
   - Dark Sky API (Key needed, stored as ```DARK_SKY_API_KEY```) https://darksky.net/dev/docs
   - Flickr API (Key needed, stored as `FLICKR_API_KEY`) https://www.flickr.com/services/api/
      
* How to run the test suite
  - This app uses RSpec for it's test suite. To run, simply type in ```rspec``` in your terminal from the root of the project.

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

### API endpoints:

#### `get '/api/v1/forecast?denver,co'`
  You can insert any city and state (use a `+` between words in city if needed). This will take the city and first hit the Google Geocoder API to retrieve the latitude and longitude for the given location. This latitutde and longitude will then be fed to the Dark Sky API to retrieve all weather data.
  Example of returned JSON: 
```
  {
    "data": {
        "id": null,
        "type": "ForecastFacade",
        "attributes": {
            "location": "denver,co",
            "current_weather": {
                "data": {
                    "id": null,
                    "type": "CurrentWeather",
                    "attributes": {
                        "time": 1541454096,
                        "summary": "Partly Cloudy",
                        "icon": "partly-cloudy-day",
                        "temperature": 52.69,
                        "feels_like": 52.69,
                        "humidity": 0.22,
                        "visibility": 10,
                        "uv_index": 1
                    }
                }
            },
            "hourly_temps": {
                "data": [
                    {
                        "id": null,
                        "type": "HourlyTemps",
                        "attributes": {
                            "temperature": 53.03,
                            "time": " 9 PM"
                        }
              }
                     
```
                   
                   
#### ` get 'api/v1/background?location=denver,co'` 
 - This endpoint takes any city and state in its query params (spaces between city words should be a `+`) and will return a random picture associated with that location. This is accomplished by hitting the Flickr API to search for public photos based on given parameters.
 
 
 #### `post 'api/v1/users'`
  - Hit this endpoint and send along an email, password, and password_confirmation in the body of your request to create a new account. This post request will return an api_key in the response. 


 
