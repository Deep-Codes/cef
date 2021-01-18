# Class

All objects are minted from classes. A "class" is like a blueprint from which we can create any number of objects.

```rb
class Student
  def initialize(roll_no, name)
    @roll_no = roll_no
    @name = name
    @is_enrolled = false
  end
end
```

Every class needs an initialize method. It is called a "constructor" in object-oriented parlance. It is sort of a special method because everytime a new object is created, Ruby automatically runs the class's constructor. It accepts the starting data for the object and stores it in "instance variables". Here the instance variables are `@roll_no`, `@name`, and `@is_enrolled`. They are local to the object - ie. other instance methods in the object can read and write the values, but they can't be seen from outside the object.

Also note that instance variables in Ruby are always prefixed with the `@` symbol.

Now that we have defined the class and defined its constructor, let us create a student object. For this we have to call the .new method on the class. Ruby will then invoke the class's initialize method with the parameters we pass to .new.

```rb
student = Student.new(715, "Raj")
```

This will initialize a student object with a `roll_no` and a `name`.

#### Data Hiding

```rb
student = Student.new(715, "Raj")
puts student.name
```

`NoMethodError: undefined method 'name' for #<Student:0x00 @roll_no=715, @name="Raj">`

This is because all instance variables are private to the object. Only the methods defined inside the object can access its instance variables. Think of an object like a black box -- the outside world simply cannot see what is inside it.

There actually is a way to see the data inside an object as well as to change it using "setters" & "getters".

#### Setters

```rb
class Student
  def initialize(roll_no, name)
    @roll_no = roll_no
    @name = name
    @is_enrolled = false
  end

  def enroll
    @is_enrolled = true
  end
end

enrolled_student = Student.new(715, "Raj").enroll
```

The enroll method works because all methods inside the class have complete access to the object's instance variables. These methods, like enroll, which "sets" some value inside an object are called "setters" in object-oriented programming.

##### Getters

Setters allow us to modify the internal state of an object. But how can we retrieve that state back into the world outside the object? For this we have "getter" methods.

```rb
class Student
  def initialize(roll_no, name)
    @roll_no = roll_no
    @name = name
    @is_enrolled = false
  end

  # Setter
  def enroll
    @is_enrolled = true
  end

  # Getter
  def is_enrolled?
    @is_enrolled
  end

  # Getter
  def name
    @name
  end

  # Getter
  def roll_no
    @roll_no
  end
end
```
