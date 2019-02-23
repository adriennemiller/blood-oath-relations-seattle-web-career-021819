class BloodOath
attr_reader :initiation_date, :cult, :follower

@@all = []

def initialize(cult_instance, follower_instance)
  @initiation_date = Time.now.to_s[0, 10]
  @cult = cult_instance
  @follower = follower_instance
  @@all << self
end


def self.all
  @@all
end

 def self.search(cult_string, person_string)
   @@all.any? do |bo_instance|
   bo_instance.cult.name == cult_string && bo_instance.follower.name == person_string
   end
 end

 def self.list_of_followers(cult_string)
  list = []
  @@all.each do |bo_instance|
     if bo_instance.cult.name == cult_string
       list << bo_instance.follower.name
     end
   end
   list
 end




















end
