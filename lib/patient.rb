class Patient

    attr_accessor :name, :doctors, :appointments

    def initialize(name)
        @name = name
    end

    def new_appointment(doctor, date)
        appt = Appointment.new(self, doctor, date)
    end

    def appointments
        Appointment.all.select{|appt| appt.patient == self}
    end

    def doctors
        appointments.map {|appt| appt.doctor}
    end

end
