class Appointment
<<<<<<< HEAD
  @@all = []
  
  attr_accessor :patient, :doctor, :date

  def initialize(patient, doctor, date)
    @date = date
    @patient = patient 
    @doctor = doctor
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
=======
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

>>>>>>> 3a26abde53cab367c3f876d2490379079a1a83e7
end