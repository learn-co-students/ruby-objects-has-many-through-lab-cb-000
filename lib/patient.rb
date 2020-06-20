class Patient
  attr_accessor :name, :appointments

  def initialize (name)
    @name = name
    @appointments = []
  end

  def add_appointment(time)
    @appointments << time
    time.patient = (self)
  end

  def doctors
    @appointments.map {|time|
      time.doctor
    }
  end
end
