require 'pry'
class Appointment
  attr_accessor :date, :doctor, :patient
  # :patient comes Doctor #patients method.
  
  def initialize(date, doctor) #=> doctor = an ins. of dr.
    @date = date
    @doctor = doctor
    doctor.add_appointment(self) #=> assoc. the app. to its correct dr. via Doctor
    # #add_appointment method.
  end
end