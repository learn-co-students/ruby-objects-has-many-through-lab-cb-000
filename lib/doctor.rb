require 'person.rb'
# a Doctor
class Doctor < Person
  def patients
    appointments.collect(&:patient)
  end
end
