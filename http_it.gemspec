Gem::Specification.new do |s|
  s.name        = 'http_it'
  s.version     = '1.0.0'
  s.date        = '2015-10-28'
  s.summary     = "Start a webserver in the current directory"
  s.description = "Start a webserver in the current directory with only the standard Ruby library installed"
  s.authors     = ["Brett Sykes"]
  s.email       = 'brettcsykes@gmail.com'
  s.homepage    = 'https://github.com/bretts/http_it'
  s.files       = Dir.glob("{lib}/**/*")
  s.executables = ["http_it", "hi"]
  s.license     = 'MIT'
end