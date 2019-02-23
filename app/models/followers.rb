class Follower

attr_reader :name, :age, :life_motto


  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    #may need to remove when building blood oaths

    @@all << self
  end

  def self.all
  @@all
  end

  def join_cult(cult_instance)
    BloodOath.new(cult_instance, self)
    cult_instance.cult_population = BloodOath.list_of_followers(cult_instance.name).count

  end

  def self.of_a_certain_age(int)
    @@all.find_all do |follower_instance|
      follower_instance.age >= int
    end
  end

  def cults
    BloodOath.all.find_all do |bo_instance|
      bo_instance.follower.name == self.name
    end

  end



















end
