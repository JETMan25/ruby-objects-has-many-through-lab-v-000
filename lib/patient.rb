class Patient
<<<<<<< HEAD
  @@all = []
  attr_reader :name 
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end 
    
   def appointments  
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
    def doctors
      appointments.map do |appointment|
        appointment.doctor
      end
    end
=======
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end
>>>>>>> 3a26abde53cab367c3f876d2490379079a1a83e7
end