## Animal is-a object look at the extra credit
class Animal
end

## is-a
class Dog < Animal

  def initialize(name)
    ## has-a
    @name = name
  end
end

## is-a
class Cat < Animal

  def initialize(name)
    ## has-a
    @name = name
  end
end

## is-a
class Person

  def initialize(name)
    ## has-a
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## is-a
class Employee < Person

  def initialize(name, salary)
    ## has-a
    super(name)
    ## has-a
    @salary = salary
  end

end

## is-a
class Fish
end

## is-a
class Salmon < Fish
end

## is-a
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## mary has-a pet named satan
mary.pet = satan

## frank is-a employee that has a 120000 salary
frank = Employee.new("Frank", 120000)

## frank has-a pet named rover
frank.pet = rover

## flipper is-a fish
flipper = Fish.new()

## crouse is-a salmon
crouse = Salmon.new()

## harry is-a halibut
harry = Halibut.new()