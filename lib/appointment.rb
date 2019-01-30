class Appointment
    attr_accessor :date, :patient, :doctor

  @@all_appointments = [ ]

  #Appointment should be initialized with a patient, a doctor and the 
  #date (as a string, like "Monday, August 1st")
  def initialize (patient, doctor, date="")
    @patient = patient
    @doctor = doctor
    @date = date
    @@all_appointments << self
  end 

  def self.all 
    @@all_appointments 
  end 
  
end 