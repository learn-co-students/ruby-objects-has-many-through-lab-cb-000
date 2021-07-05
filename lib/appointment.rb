class Appointment
  attr_accessor :doctor, :date, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

end

=begin
  initialize - This method declares our date and doctor and immediately
      calls our doctor classes add_appointment method

  The patient will be added in after we have declared it. We can use the
    patient setter mehtod to create it within the class without explicitly
    creating a patient instance variable. 
=end
