require( 'minitest/autorun' )
require( 'minitest/rg' )
require( 'pry-byebug' )
require_relative( '../models/shoo' )

class TestShoo < Minitest::Test

  def setup
    options = {
      name: 'Alistair',
      address: '8/1 Woseley place',
      size: 10
    }
    @customer = Shoo.new( options )
  end

  def test_name
    assert_equal( 'Alistair', @customer.name )
  end

  def test_address
    assert_equal( '8/1 Woseley place', @customer.address )
  end

  def test_size
    assert_equal( Fixnum, @customer.size.class )
    assert_equal( 10, @customer.size )
  end

end
