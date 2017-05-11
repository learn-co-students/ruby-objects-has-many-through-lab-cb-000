class Patient
  attr_reader :name, :appointments
  def initialize(name)

    @name = name
    @appointments = []
  end

  def add_appointment(app)
    app.patient = self
    @appointments << app

  end

  def doctors
    docs = []
    @appointments.each { |app| docs << app.doctor}
    docs
  end  

end
