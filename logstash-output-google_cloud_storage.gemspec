Gem::Specification.new do |s|
  s.name            = 'logstash-output-google_cloud_storage'
  s.version         = '4.0.0'
  s.licenses        = ['Apache-2.0']
  s.summary         = "plugin to upload log events to Google Cloud Storage (GCS)"
  s.description     = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Elastic"]
  s.email           = 'info@elastic.co'
  s.homepage        = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib", "vendor/jar-dependencies"]

  # Files
  s.files = Dir["lib/**/*","spec/**/*","*.gemspec","*.md","CONTRIBUTORS","Gemfile","LICENSE","NOTICE.TXT", "vendor/jar-dependencies/**/*.jar", "vendor/jar-dependencies/**/*.rb", "VERSION", "docs/**/*"]

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"

  s.add_runtime_dependency 'stud'
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'mime-types', '~> 2' # last version compatible with ruby 2.x
  s.add_runtime_dependency 'concurrent-ruby' # use version bundled with Logstash to avoid platform mismatch on plugin install
  s.add_development_dependency 'logstash-devutils'

  # JARs
  s.platform = 'java'
end

