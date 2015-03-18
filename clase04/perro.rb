require "./mascota"
class Perro < Mascota
  attr_accessor :talla
  
  def initialize(nombre, talla, peso)
  	super(nombre, peso)
  	@talla = talla
  end

  def costo_servicio  	
    case talla
    when "G"
    	super + 150
    when "P"
      super + 80
    else
    	0
    end
  end

end