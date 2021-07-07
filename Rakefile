
require_relative './config/environment.rb'
puts 'Welcome to Doctors & Songs'

def reload!
  load './lib/artist.rb'
  load './lib/song.rb'
  load './lib/genre.rb'
  load './lib/doctor.rb'
  load './lib/patient.rb'
  load './lib/appointment.rb'
end

desc 'A console'
task :console do
  Pry.start
end
