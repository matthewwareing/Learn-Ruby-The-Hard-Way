# Implicit Inheritance
# the implicit actions that happen when you defined a function in the parent but not in the child.

class Parent

  def implicit()
    puts "PARENT implicit()"
  end
end

class Child < Parent
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()