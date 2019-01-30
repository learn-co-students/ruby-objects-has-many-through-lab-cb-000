class Doctor
    attr_accessor :name, :date, :patient

  @@all_doctors = [ ]

  def initialize(name)
    @name = name
    @@all_doctors << self
  end

  def self.all
    @@all_doctors 
  end

  #creates a new appointment that should know it belongs to the doctor
  def new_appointment(patient, date)
    Appointment.new(patient, self, date="")
  end

  #iterates through the Appointments array and FINDS those belonging to the doctor
  def appointments
    Appointment.all.select do |a|
      a.doctor == self
    end
  end


  #iterates over a specific doctor's appointment and collects the patient that 
  #belongs to each appointment
 
  def patients
    self.appointments.collect do |a|
      a.patient
    end
  end

end