class Cult
  attr_reader :name, :location, :founding_year, :slogan
  attr_accessor :cult_population


 @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @cult_population = 0
    @@all << self
    #@list_of_followers = []
  end


  def recruit_follower(follower_instance)
    BloodOath.new(self, follower_instance)
    @cult_population = BloodOath.list_of_followers(self.name).count
  end

  def self.all
    @@all
  end

  def self.find_by_name(name_string)
    BloodOath.all.find do |bo_instance|
      bo_instance.cult.name == name_string
    end
  end

  def self.find_by_location(location_string)
    @@all.find_all do |bo_instance|
      bo_instance.location == location_string
    end
  end

  def self.find_by_founding_year(int)
    @@all.find_all do |bo_instance|
      bo_instance.founding_year == int
    end
  end













end
