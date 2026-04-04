Gem::Specification.new do |spec|
  spec.name          = "jekyll-lunaris-highlighter"
  spec.version       = "0.1.0"
  spec.summary       = "Custom Lunaris syntax highlighting for Jekyll"
  spec.authors       = ["Erios Website"]
  spec.files         = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rouge", ">= 3.0", "< 5.0"
end
