class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    until @appointments.include?(appointment)
      @appointments << appointment
    end
  end

  def patients
    self.appointments.collect do |a|
      a.patient
    end
  end


end
