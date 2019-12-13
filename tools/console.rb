require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
scientology = Cult.new('Scientology', 'London', 1939, "I'll sue your ass!")
waco = Cult.new('Waco Siege','Waco', 1973, 'Burn baby Burn')
barry = Follower.new('Barry', 69, 'Blood for the blood gods!')
harry = Follower.new('Harry', 13, "I'm a what now?!")

scientology.recruit_follower(barry)
scientology.recruit_follower(harry)
waco.recruit_follower(barry)

barry.join_cult(scientology)
harry.join_cult(scientology)
harry.join_cult(waco)
def hello
Follower.of_a_certain_age(20) ?  Follower.of_a_certain_age(20) : 'Failed'
end
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
