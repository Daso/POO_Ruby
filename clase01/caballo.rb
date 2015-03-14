class Caballo
  
  attr_accessor :nombre, :raza, :peso, :color
 
  def initialize(nombre, raza, peso, color)
  	@nombre = nombre
  	@raza = raza
  	@peso = peso
  	@color = color
  end

  def correr
    "Estoy corriendo a toda velocidad"
  end

  def descansar
    "Estoy descansando"
  end

  def trotar
    "Estoy trotando a paso continuo"
  end

  def presentarse
    "Hola, soy #{nombre} \n mi raza es #{raza}"
  end

end

#---FIN DE LA CLASE -----

caballo01 = Caballo.new("Tito", "Arabe", 180, "blanco")
puts caballo01.correr
puts caballo01.trotar
puts caballo01.presentarse.upcase
