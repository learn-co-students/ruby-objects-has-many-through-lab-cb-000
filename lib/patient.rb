class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_appointment(appointment)

  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
