class Doctor
  attr_accessor :name, :appointments

  def initialize (name)
    @name = name
    @appointments = []
  end

  def add_appointment(time)
    @appointments << time
    time.doctor = self
  end

  def patients
    @appointments.map { |time|
      time.patient
    }
  end

end
