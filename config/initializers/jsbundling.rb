# config/initializers/jsbundling.rb

JsBundling.setup do |config|
    # Specify the path to your application.js file (JavaScript entry point)
    config.entry_path = "app/javascript/packs/application.js"
    
    # Specify the path to your application.css file (CSS entry point)
    config.styles_path = "app/assets/stylesheets/application.css"
    
    # Specify the command to build the assets
    config.build_command = "yarn build"
  end
  