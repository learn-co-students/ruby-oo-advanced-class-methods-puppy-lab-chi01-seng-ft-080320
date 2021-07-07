class Dog
    @@all = []
    attr_reader :name 
def initialize(name)
    @name = name 
    self.save  
end 

def self.all
    @@all
end

def self.clear_all
    Dog.all.clear 
end

def self.print_all
    dog_array = Dog.all.map do |dog_instance|
        dog_instance.name
    end
    puts dog_array 
end

def save
    @@all << self
end
end #of Dog class