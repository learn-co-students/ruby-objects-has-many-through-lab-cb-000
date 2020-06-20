
class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(new_app)
    self.appointments << new_app
    new_app.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect do |time|
      time.patient
    end
  end

end
