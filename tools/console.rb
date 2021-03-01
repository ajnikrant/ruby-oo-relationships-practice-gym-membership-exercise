# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

lifter1=Lifter.new("joel", 20)
lifter2=Lifter.new("mel", 50)
lifter3=Lifter.new("Cameron", 100)

gym1=Gym.new("Crossfit PR STAR")
gym2=Gym.new("460 fitness")
gym3=Gym.new("Gold's gym")

membership1=Membership.new(50, lifter1, gym1)
membership2=Membership.new(15, lifter2, gym3)
membership3=Membership.new(200, lifter3, gym1)
membership4=Membership.new(25, lifter1, gym2)
membership5=Membership.new(10, lifter1, gym3)


binding.pry

puts "Gains!"
