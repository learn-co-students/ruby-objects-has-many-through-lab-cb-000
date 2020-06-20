class Doctor
  attr_reader :appointments, :name, :patients
  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(app)
    @appointments << app
    @patients << app.patient

  end



end
