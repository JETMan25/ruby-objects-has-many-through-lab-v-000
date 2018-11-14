class Doctor
<<<<<<< HEAD
  attr_accessor :name 
  @@all = []
  
  def self.all
    @@all
  end 
  
  
  def initialize(name)
    @name = name
    @@all << self 
  end

  def new_appointment(name, date)
    Appointment.new(name, self, date)
  end
  
  def appointments 
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end 
  
    def patients 
      appointments.map do |appointment|
        appointment.patient 
      end
  end 
  
=======
  attr_accessor :name, :add_appointment

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
>>>>>>> 3a26abde53cab367c3f876d2490379079a1a83e7
end