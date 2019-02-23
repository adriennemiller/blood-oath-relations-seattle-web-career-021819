require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

anthony = Follower.new("Anthony", 16, "YOLO")
barb = Follower.new("Barb", 45, "Yeehaw")

abc_cult = Cult.new("ABC", "Cincinnati", 2019, "Cult Your Best!")

grandmas_cult = Cult.new("Grandma", "Cincinnati", 2019, "Hard candy!")

montessori_cult = Cult.new("Montessori", "Cincinnati", 2019, "Developmental stages!")



# abc_cult.recruit_follower(anthony)
# grandmas_cult.recruit_follower(anthony)
# montessori_cult.recruit_follower(anthony)

anthony.join_cult(abc_cult)
anthony.join_cult(grandmas_cult)
anthony.join_cult(montessori_cult)
barb.join_cult(grandmas_cult)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
