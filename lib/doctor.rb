class Doctor
  attr_accessor :name, :appointments
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end
  def self.all
    @@all
  end
  def new_appointment(patient, date)
    a = Appointment.new(date, patient, self)
    @appointments << a
    a
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end
