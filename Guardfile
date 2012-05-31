# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'annotate' do
  watch( 'db/schema.rb' )

  # Uncomment the following line if you also want to run annotate anytime
  # a model file changes
  #watch( 'app/models/**/*.rb' )

  # Uncomment the following line if you are running routes annotation
  # with the ":routes => true" option
  #watch( 'config/routes.rb' )
end

group 'unit-tests' do
  #guard 'rspec', :cli => "--color --format nested --fail-fast --drb",
          #:spec_paths => ['spec/models', 'spec/controllers', 'spec/routing'] do
  guard 'rspec', :cli => "--color --format nested --fail-fast --drb", :spec_paths => ['spec/models', 'spec/controllers'] do
    watch(%r{^app/(.+)\.rb$})  { |m| "spec/#{m[1]}_spec.rb" }
  end
end

guard 'coffeescript', :input => 'app/assets/javascripts', :noop => true
guard 'sass', :input => 'app/assets/stylesheets', :noop => true