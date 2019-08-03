class Patient 

  @@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all 
  end

  def new_appointment 
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def appointments
    
  end
  
  def doctors
    
  end
end