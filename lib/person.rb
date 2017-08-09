require 'pry'
# provides sturcture and methods for a class to
# create new instances and
# keep track of instances
class Person
  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.add_belongs_to(self)
  end
end
