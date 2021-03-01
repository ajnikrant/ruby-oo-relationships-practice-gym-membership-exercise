class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    memberships.map{|membership| membership.gym}
  end

  def self.lift_totals
    all.map{|lifters| lifters.lift_total}.sum
  end

  def membership_cost
    memberships.map{|membership| membership.cost}.sum
  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end
end
