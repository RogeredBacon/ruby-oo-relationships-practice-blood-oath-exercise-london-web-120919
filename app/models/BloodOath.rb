class BloodOath
attr_reader :follower, :cult
attr_accessor
    @@all = []

    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @date = Time.now.to_s.split(' ')[0]
        sav
    end
    
    def self.all
        @@all
    end
    
    def sav
    unless BloodOath.all.find { |oath| oath.follower == self.follower && oath.cult == self.cult }
            @@all.push(self)
        end
    end
end
