class Cult
    attr_reader :name, :location, :founding_year, :slogan
    attr_accessor
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all.push(self)
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end

    def self.all
        @@all
    end

    def cult_population
        BloodOath.all.select { |oaths| oaths.cult == self}.count
    end

    def self.find_by_name(name)
        self.all.find { |cult| cult.name == name}
    end

    def self.find_by_location(location)
        self.all.select { |cult| cult.location == location}
    end

    def self.find_by_founding_year(founding_year)
        self.all.select { |cult| cult.founding_year == founding_year}
    end
end