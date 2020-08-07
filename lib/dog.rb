class Dog
    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def self.print_all
        dog_names_array = self.all.map do |dog_instance|
            dog_instance.name
        end
        puts dog_names_array
    end

    def save
        @@all << self
    end

    def self.clear_all
        @@all.clear
    end

end # end of Dog class