class Doctor

   attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appoint)
    @appointments << appoint
    appoint.doctor = self
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end
