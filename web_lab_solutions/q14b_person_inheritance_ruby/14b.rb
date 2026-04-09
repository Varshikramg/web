class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduction
    "Hi, I am #{name} #{age} years old."
  end
end

class Student < Person
  attr_reader :student_id

  def initialize(name, age, student_id)
    super(name, age)
    @student_id = student_id
  end

  def introduction
    "Hi, I am #{name} #{age} years old.my student id is #{student_id}"
  end
end

class Teacher < Person
  attr_reader :subject

  def initialize(name, age, subject)
    super(name, age)
    @subject = subject
  end

  def introduction
    "Hi, I am #{name} #{age} years old. I am teaching #{subject}."
  end
end

puts Student.new("alice", 20, "S101").introduction
puts Teacher.new("mr. Kumar", 40, "mathematics").introduction
