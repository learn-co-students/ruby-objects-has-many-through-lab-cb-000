class Doctor
attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(app)
    @appointments << app
    app.doctor = self
  end

  def patients
    @appointments.collect { |p| p.patient }
  end
end