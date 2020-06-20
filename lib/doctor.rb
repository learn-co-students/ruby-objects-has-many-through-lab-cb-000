class Doctor
  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    new_app = Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor == self
    end
  end

  def patients
    appointments.map do |appointments|
      appointments.patient
    end
  end

  def self.all
    @@all
  end

end
