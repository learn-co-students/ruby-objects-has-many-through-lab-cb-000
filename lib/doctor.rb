class Doctor
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient,self, date)
    appointment.doctor = self
    @appointments << appointment
    appointment
  end

  def self.all
    @@all
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.map {|a| a.patient}
  end

end
