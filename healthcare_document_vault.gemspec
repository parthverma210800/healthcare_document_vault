require_relative "lib/healthcare_document_vault/version"

Gem::Specification.new do |spec|
  spec.name        = "healthcare_document_vault"
  spec.version     = HealthcareDocumentVault::VERSION
  spec.authors     = [ "Parth Verma" ]
  spec.email       = [ "parth.verma@mindbowser.com" ]
  spec.homepage    = "https://github.com/parthverma210800/healthcare_document_vault"
  spec.summary     = "Healthcare Document Vault"
  spec.description = "Healthcare Document Vault"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/parthverma210800/healthcare_document_vault"
  spec.metadata["changelog_uri"] = "https://github.com/parthverma210800/healthcare_document_vault/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.1.2"
end
