Gem::Specification.new do |s|
  s.name        = 'cumtd'
  s.version     = '0.1.4.7'
  s.date        = '2013-08-22'
  s.summary     = "CUMTD API wrapper"
  s.description = "An interface to CUMTD's API."
  s.authors     = ["Brett Jackson"]
  s.email       = 'brett@brettjackson.org'
  s.files       = ["lib/cumtd.rb", 'lib/stop.rb', 'lib/stop_point.rb', 'lib/departure.rb', \
                   'lib/route.rb', 'lib/trip.rb', 'lib/stop_time.rb', 'lib/vehicle.rb', \
                   'lib/shape.rb', 'lib/reroute.rb']
  s.homepage    =
    'http://github.com/bjackson/cumtd'
  s.license       = 'MIT'
end