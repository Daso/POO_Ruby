class Mascota
  attr_accessor :nombre, :peso

  def initialize(nombre, peso)
   @nombre = nombre
   @peso = peso
  end

  def costo_servicio
  	peso * 1.25
  end
end