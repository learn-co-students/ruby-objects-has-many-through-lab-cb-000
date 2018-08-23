class Doctor
  attr_accessor :name, :patients, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @patients = []
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    new_appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.each { |x| x.doctor == self}
  end

  def patients
    appointments.map { |x| x.patient}
  end
end
