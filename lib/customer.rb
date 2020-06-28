class Customer
  attr_accessor :name, :age #we can change their name and age
  #would be attr_reader if we wanted that to be read-only

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
end
