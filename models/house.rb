require_relative('../db/sql_runner')

class House

  attr_reader :house_name, :id

  def initialize( options )
    @id = options['id'].to_i
    @house_name = options['house_name']
  end


  def save()
    sql = "INSERT INTO houses
    (
      house_name
    )
    VALUES
    (
      $1
    )
    RETURNING *"
    values = [@house_name]
    house = SqlRunner.run(sql, values)
    @id = house.first()['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM houses;"
    SqlRunner.run(sql)
  end







end
