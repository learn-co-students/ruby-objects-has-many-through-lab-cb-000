class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment

  end

  def patients
    @appointments.map { |e| e.patient }
  end

end
