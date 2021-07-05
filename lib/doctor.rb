class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
  end

  def patients
    self.appointments.collect { |appointments| appointments.patient }
  end

end

=begin
  initializes - Takes in the name and declares an empty appointments array

  add_appointment - Takes in an appointment argument and shoves
      the object into the Doctors class' appointments array.
      Since the doctor can have many appointments this is a one-to-many
      relationship.
      At the same time the method is declaring that this
      appointments patient instance variable is the doctor class
      itself.

  patients - This method creates an array of patient instances from the
      appointments patients instance variables.
=end
