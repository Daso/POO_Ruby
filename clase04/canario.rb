require "./mascota"
class Canario < Mascota

  attr_accessor :color

  def initialize(nombre, peso, color)
  	super(nombre, peso)
    @color = color
  end

  def costo_servicio
  	50.0
  end

end