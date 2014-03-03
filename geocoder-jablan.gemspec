Gem::Specification.new do |s|
    s.name          = 'geocoder-jablan'
    s.version       = "1.0.3"
    s.authors       = ["Schuyler Erle", "Mladen Jablanovic"]
    s.description   = "US address geocoding based on TIGER/Line."
    s.summary       = "US address geocoding based on TIGER/Line."
    s.homepage      = "https://github.com/jablan/geocoder"
    s.email         = "jablan@radioni.ca"
    s.files         = ["lib/geocoder/us.rb"] + Dir["lib/geocoder/us/*"] + Dir["tests/*"]
    s.require_path  = "lib"
    s.test_files    = "test/run.rb"
    s.add_dependency 'sqlite3-ruby', '~>1.3.1'
    s.has_rdoc      = true
    s.extra_rdoc_files  =   ["README.rdoc"]
end
