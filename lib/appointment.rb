class Appointment
  attr_accessor :doctor, :date , :patient 
  
  def initialize(date, doctor)
    @date = date
    if doctor.is_a?(Doctor)
      @doctor = doctor
      doctor.add_appointment(self)
    end 
  end

    
end
