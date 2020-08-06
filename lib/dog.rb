# Add your code here

require "pry"

class Dog 

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.save
        # binding.pry
    end

    def self.all
        @@all
    end 

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        self.all.each do |dog|
            puts dog.name
        end
    end 


    def save
        self.class.all << self
    end 


end 