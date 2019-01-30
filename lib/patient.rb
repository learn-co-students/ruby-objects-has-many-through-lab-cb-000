class Patient
    attr_accessor :name, :doctor, :date

  @@all_patients = [ ]

  def initialize(name)
    @name = name
    @@all_patients << self
  end 

  def self.all
    @@all_patients
  end

#creates a new appointment
#the appt should know it belogs to the specific patient
def new_appointment(doctor,date)
  Appointment.new(self, doctor, date="")

end 

#instance method appointments, will iterate through the Appointments array and 
#return appointments that belong to the patient
def appointments 
  Appointment.all.select do |a|
    a.patient == self
  end
end

#iterates over the patient's appts 
#collects the doctors that belong to each of the patient's appts
def doctors 
  self.appointments.collect do |a|
    a.doctor
  end
end
 
end
