class Doctor

    @@all = []


    attr_accessor :name, :appointments


    def initialize (name)
      @name = name
      @appointments = []
      @@all << self #track all doctors
    end

    def appointments
      #returns an array of appointments belonging to this Doctor
      @appointments
    end

    def new_appointment(patientObj, dateStr)
      #doctor_who = Doctor.new('The Doctor')
      #hevydevy = Patient.new('Devin Townsend')
      #appointment = doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')

      #return an appointment, not an array, so need to
      #use a tmp var before adding to @appointments array

      appointment = patientObj.new_appointment(self, dateStr)
      @appointments << appointment
      appointment #NOW return the new appointment object.
    end

    def patients
      #iterates over that doctor's Appointments and collect the patient
      #that belongs to each Appointments
        appts = Appointment.all.select{ |appt| appt.doctor == self }
        #appts is an array of OBJECTS
        #now return all the patient objects from the array
        appts.map { |x| x.doctor == self &&  x.patient}
    end

    def self.all
      @@all
    end

    def self.print_all
      @@all.map{ |x| puts("DOCTORS: \nDoctor: #{x.name}, Patient:  #{x.patient.name}, Date:  #{x.date}")}
    end

  end
