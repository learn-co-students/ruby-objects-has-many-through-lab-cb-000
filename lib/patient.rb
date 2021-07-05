class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect { |appointment| appointment.doctor }
  end

end

=begin
  initializes - Takes in the name and declares an empty appointments array

  add_appointment - Takes in an appointment argument and shoves
      the object into the Patient class' appointments array.
      Since the patient can have many appointments this is a one-to-many
      relationship.
      At the same time the method is declaring that this
      appointments patient instance variable is the patient class
      itself.

  doctors - This method creates an array of doctor instances from the
      appointments doctor instance variables.
=end
