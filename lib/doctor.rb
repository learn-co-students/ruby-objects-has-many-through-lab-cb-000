# **The `Doctor` model:**

# * The `Doctor` class needs an instance method, `#appointments`,
  #that iterates through all appointments and finds those belonging to this doctor.
# * The `Doctor` class needs an instance method, `#patients`,
  #that iterates over that doctor's appointments and collects the patient that belongs to each appointment.
class Doctor

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    new_appointment = Appointment.new(patient, self, date)

  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def patients
    appointments.map { |appointment| appointment.patient }
  end

end
