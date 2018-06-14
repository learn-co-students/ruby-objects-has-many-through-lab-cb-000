class Doctor

    attr_accessor :name, :appointments, :patients

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        appointment = Appointment.new(patient, self, date)
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def patients
        appointments.map {|appt| appt.patient}
    end

    def self.all
        @@all
    end


end
