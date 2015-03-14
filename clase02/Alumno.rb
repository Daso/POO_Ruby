#require_relative 'Conejo'
require './Conejo'

class Alumno
  attr_accessor :nombre, :conejo

  def initialize(nombre, nombre_conejo)  	
    @nombre = nombre
    @conejo = Conejo.new(nombre_conejo)    
  end

  def acariciar()
    "Soy #{nombre} estoy acariciando a #{conejo.nombre}"
  end

end

