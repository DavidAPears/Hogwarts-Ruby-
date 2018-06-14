require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( './models/student.rb' )
require_relative( './models/house.rb' )
also_reload( './models/*' )

#INDEX
get '/students' do
  @students = Student.all()
  erb( :index )
end

#NEW
get '/students/new' do
  erb( :new )
end
#
post '/students' do
  @student = Student.new(params)
  @student.save
  erb( :create )
end

get '/houses' do
  @houses = House.all()
  erb( :index_house )
end
#
# #SHOW
# get '/pizza-orders/:id' do
#   @order = PizzaOrder.find(params[:id].to_i)
#   erb( :show )
# end
#
#CREATE
