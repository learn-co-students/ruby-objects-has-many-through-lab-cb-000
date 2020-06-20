class Patient
  
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
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.each { |x| x.patient == self}
  end
  
  def doctors
    appointments.map { |x| x.doctor}
  end
end