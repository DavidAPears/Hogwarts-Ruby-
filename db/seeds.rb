 require_relative('../models/student')

Student.delete_all()

Student1 = Student.new({
  "first_name" => "harry",
  "last_name" => "potter",
  "house" => "gryffindor",
  "age" => 14
})

Student2 = Student.new({
  "first_name" => "ron",
  "last_name" => "weasley",
  "house" => "gryffindor",
  "age" => 14
})

Student3 = Student.new({
  "first_name" => "hermione",
  "last_name" => "granger",
  "house" => "gryffindor",
  "age" => 14
})

Student4 = Student.new({
  "first_name" => "draco",
  "last_name" => "malfoy",
  "house" => "slytherin",
  "age" => 14
})

Student4 = Student.new({
  "first_name" => "draco",
  "last_name" => "malfoy",
  "house" => "slytherin",
  "age" => 14
})

Student5 = Student.new({
  "first_name" => "luna",
  "last_name" => "lovegood",
  "house" => "ravenclaw",
  "age" => 14
})

Student6 = Student.new({
  "first_name" => "cedric",
  "last_name" => "diggory",
  "house" => "hufflepuff",
  "age" => 14
})

student1.save
student2.save
student3.save
student4.save
student5.save
student6.save
