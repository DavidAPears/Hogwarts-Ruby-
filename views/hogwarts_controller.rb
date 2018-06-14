require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( './models/student.rb' )
require_relative( './models/house.rb' )
also_reload( './models/*' )

#INDEX
get '/student' do
  @students = Student.all()
  erb( :index )
end

# #NEW
# get '/pizza-orders/new' do
#   erb( :new )
# end
#
# #SHOW
# get '/pizza-orders/:id' do
#   @order = PizzaOrder.find(params[:id].to_i)
#   erb( :show )
# end
#
# #CREATE
# post '/pizza-orders' do
#   @order = PizzaOrder.new(params)
#   @order.save
#   erb( :create )
end
