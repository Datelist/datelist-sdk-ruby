Gem::Specification.new do |s|
  s.name        = 'datelist'
  s.version     = '1.0.0'
  s.summary     = "SDK for developing using https://datelist.io API in Ruby"
  s.description = "SDK for developing using https://datelist.io API in Ruby"
  s.authors     = ["Alexis Clarembeau"]
  s.email       = 'alexis@datelist.io'
  s.files       = ["lib/datelist.rb"]
  s.homepage    = 'https://datelist.io'
  s.license       = 'MIT'

  s.add_dependency('httparty')
end
