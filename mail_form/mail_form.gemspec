$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mail_form/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mail_form"
  s.version     = MailForm::VERSION
  s.authors     = ["danielmoralesp"]
  s.email       = ["daniel_moralesp@hotmail.com"]
  s.homepage    = "http://danielmorales.co" # Ojoo Siempre debe ponerse una uri valida
  s.summary     = ["Summary of PdfRenderer."] ## Ojoo quitarle la letra Todo para que funcione
  s.description = ["Description of PdfRenderer."] ### Ojoo quitarle la letra Todo para que funcione
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.6"

  s.add_development_dependency "sqlite3"
end
