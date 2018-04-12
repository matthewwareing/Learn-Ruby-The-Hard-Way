# Animal is-a object
class Animal
end

## Dog is-a Animal
class Dog < Animal
  def initalize(name)
    ## Dog has-a name
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal
  def initalize(name)
    ## Cat has-a Name
    @name = name
  end
end

## Person is-a class
class Person

  def initalize(name)
    ## Person has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end
  attr_accessor = :pet
end

## Employee is-a Person
class Employee < Person
  def initalize(name, salary)
    ## Employee has-a name
    super(name)
    ## Employee has-a salary
    @salary = salary
  end
end

## Fish is-a class
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## Mary is-a Person
mary = Person.new("Mary")

## Mary has-a pet called satan
mary.pet = satan

## frank is-a employee
frank = Employee.new("Frank", 120000)

## frank has-a pet called rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a salmon
crouse = Salmon.new()

## harry is-a halibut
harry = Halibut.new()