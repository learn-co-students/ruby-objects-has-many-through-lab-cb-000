class Doctor
  attr_accessor :name,:appointments

  def initialize(name)
    @name=name
    @appointments=[]
  end #initialize

  def add_appointment(appointment) # instance of the Appointment class
    @appointments << appointment
    # The method should also tell that appointment that it belongs to that doctor.
  end #add_appointment

  def patients
    #   iterates over that doctor's appointments and collects the patient that belongs to each appointment.
    @appointments.collect do |appointment|
      appointment.patient
    end #collects
  end #patients
end #class
