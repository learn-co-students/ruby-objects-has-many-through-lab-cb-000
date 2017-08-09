require 'person.rb'

# links doctor and patient
class Appointment
  attr_accessor :doctor, :patient, :date

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

  def add_belongs_to(person)
    if person.is_a? Doctor
      @doctor = person
    else
      @patient = person
    end
  end
end
