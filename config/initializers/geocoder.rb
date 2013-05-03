# config/initializers/geocoder.rb
Geocoder.configure(
  # geocoding service request timeout, in seconds (default 3):
  :timeout => 5,
  # set default units to kilometers:
  :units => :km,
  :language => :ru_RU
)