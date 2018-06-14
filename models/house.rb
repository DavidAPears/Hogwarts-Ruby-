require_relative('../db/sql_runner')

class House

  attr_reader :house_name, :id

  def initialize( options )
    @id = options['id'].to_i
    @house_name = options['house_name']
  end











end
