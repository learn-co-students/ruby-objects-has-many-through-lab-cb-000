class Patient
  attr_accessor :name, :doctors, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    new_appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.each { |x| x.patient == self}
  end

  def doctors
    appointments.map { |x| x.doctor}
  end
end
