class Appointment
  @@all = []
  attr_reader :doctor
  attr_accessor :patient
  def initialize(date, patient, doctor)
    @@all << self
    @date = date
    @patient = patient
    @doctor = doctor
  end

  def self.all
    @@all
  end
end
