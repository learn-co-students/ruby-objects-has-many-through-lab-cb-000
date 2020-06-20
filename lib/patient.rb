class Patient
  attr_accessor :name, :appointments
  def initialize(name)
    @name=name
    @appointments=[]
  end #initialize

  def add_appointment(appointment)
    @appointments << appointment
    #   This method should also tell the appointment that it belongs to this patient.
    appointment.patient=self
  end

  def doctors
    #   that iterates over that patient's appointments and collects the doctor that belongs to each appointment.
    @appointments.collect do |appointment|
      appointment.doctor
    end #collect
  end

end #class
