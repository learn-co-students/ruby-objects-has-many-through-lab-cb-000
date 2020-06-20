require 'person.rb'
# a patient
class Patient < Person
  def doctors
    appointments.collect(&:doctor)
  end
end
