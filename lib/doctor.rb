class Doctor
  attr_accessor :patients, :appointments
  attr_reader :name
  def initialize(name)
    @name = name
    @patients = []
    @appointments = []
  end


  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
    
  end
end