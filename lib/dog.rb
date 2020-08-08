class Dog
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @save = save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.print_all   
        self.all.each do |dog|
            puts "#{dog.name}"
    end
    end

    def self.clear_all
        @@all.clear
    end

end
