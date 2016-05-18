require( 'pg' )

class Shoo

  attr_accessor( :name, :address, :size )

  def initialize( options )
    @name = options[ :name ]
    @address = options[ :address ]
    @size = options[ :size ]
  end

end
