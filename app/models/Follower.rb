class Follower
    attr_reader :name, :age, :life_motto
    attr_accessor
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all.push(self)
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select {|person| person.age >= age}
    end

end