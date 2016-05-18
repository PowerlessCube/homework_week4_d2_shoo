require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require( 'pry-byebug' )
require_relative( './models/shoo' )

get 'shoo/new' do
  erb( :new )
end

post '/shoo' do
  @shoo = Shoo.new( params )
  # @pizza.save(  )
  erb( :create )
end
