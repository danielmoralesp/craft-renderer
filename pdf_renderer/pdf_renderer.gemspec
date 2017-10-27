$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pdf_renderer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pdf_renderer"
  s.version     = PdfRenderer::VERSION
  s.authors     = ["danielmoralesp"]
  s.email       = ["daniel_moralesp@hotmail.com"]
  s.homepage    = "http://danielmorales.co" # Ojoo Siempre debe ponerse una uri valida
  s.summary     = ["Summary of PdfRenderer."] ## Ojoo quitarle la letra Todo para que funcione
  s.description = ["Description of PdfRenderer."] ### Ojoo quitarle la letra Todo para que funcione
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.6"
  s.add_dependency "prawn", "0.12.0"

  # example render pdf in irb
  # $ irb
  # Inside irb, let’s create a sample PDF: require "prawn"
  # pdf = Prawn::Document.new
  # pdf.text("A PDF in four lines of code") pdf.render_file("sample.pdf")
  # Exit irb, and you can see a PDF file in the directory in which you started the irb session

  s.add_development_dependency "sqlite3"
end
