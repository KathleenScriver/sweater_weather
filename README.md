# README

SweaterWeather is a weather app built to practice building a backend and api endpoints that will interface with a separate frontend that will consume the api endpoints and display the given data.  

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
      
* How to run the test suite
  This app uses RSpec for it's test suite. To run, simply type in ```rspec``` in your terminal from the root of the project.

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

### API endpoints:

#### ```/api/v1/forecast?denver,co```
  You can insert any city and state (use a `+` between words in city if needed). This will take the city and first hit the Google Geocoder API to retrieve the latitude and longitude for the given location. This latitutde and longitude will then be fed to the Dark Sky API to retrieve all weather data.
  Example of returned JSON: 
  <em><img src="https://github.com/KathleenYruegas/sweater_weather/blob/master/Screen%20Shot%202018-11-05%20at%202.41.57%20PM.png" alt="Image of JSON Hash" height=200px></em>
