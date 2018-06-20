require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = nil #Logger.new(STDOUT)
  # remove nil and comment back logger to see activerecord DB output in terminal.
  Pry.start
end
