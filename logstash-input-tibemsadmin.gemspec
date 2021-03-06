Gem::Specification.new do |s|
  s.name          = "logstash-input-tibemsadmin"
  s.version       = "0.0.1"
  s.licenses      = ["Apache-2.0"]
  s.summary       = "This imput get tibems admin info and stats"
  s.description   = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install gemname. This gem is not a stand-alone program"
  s.authors       = ["Justo Alonso"]
  s.email         = "justo.alonso@gmail.com"
  s.homepage      = "https://github.com/jalonsoa/logstash-input-tibemsadmin"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", ">= 2.0.0", "< 3.0.0"
  s.add_runtime_dependency "logstash-codec-plain"
  s.add_runtime_dependency "stud", ">= 0.0.22"
  s.add_runtime_dependency "tibems", ">= 0.0.2"
  s.add_development_dependency "logstash-devutils", ">= 0.0.16"
end
