require "./mascota"
class Gato < Mascota
  def initialize(nombre, peso)
    super(nombre, peso)
  end

  def costo_servicio
  	super + 60
  end
end