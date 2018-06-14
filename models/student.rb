require_relative('../db/sql_runner')
require('pry')
class Student

  attr_reader :first_name, :last_name, :house, :age, :id

  def initialize( options )
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house']
    @age = options['age'].to_i

  end



  def save()
    sql = "INSERT INTO students
    (
      first_name,
      last_name,
      house,
      age
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING *"
    values = [@first_name, @last_name, @house, @age]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM students;"
    SqlRunner.run(sql)
  end


  def self.find( id )
    sql = "SELECT * FROM students WHERE id = $1"
    values = [id]
    student = SqlRunner.run( sql, values )
    result = Student.new( student.first )
    return result
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run( sql )
    result = students.map { |student| Student.new( student ) }
    return result
  end
  Binding.pry

  def pretty_name()
    return "#{@first_name} #{@last_name}"
  end
#   def update()
#     sql = "UPDATE pizza_orders
#     SET
#     (
#       first_name,
#       last_name,
#       topping,
#       quantity
#     ) =
#     (
#       $1, $2, $3, $4
#     )
#     WHERE id = $5"
#     values = [@first_name, @last_name, @topping, @quantity, @id]
#     SqlRunner.run( sql, values )
#   end
#
#   def self.delete_all()
#     sql = "DELETE FROM pizza_orders;"
#     SqlRunner.run(sql)
#   end
#
#   def delete()
#     sql = "DELETE FROM pizza_orders
#     WHERE id = $1"
#     values = [@id]
#     SqlRunner.run( sql, values )
#   end
#
#   def self.all()
#     sql = "SELECT * FROM pizza_orders"
#     pizzas = SqlRunner.run( sql )
#     result = pizzas.map { |pizza| PizzaOrder.new( pizza ) }
#     return result
#   end
#
#   def self.find( id )
#     sql = "SELECT * FROM pizza_orders WHERE id = $1"
#     values = [id]
#     pizza = SqlRunner.run( sql, values )
#     result = PizzaOrder.new( pizza.first )
#     return result
#   end
#
end
