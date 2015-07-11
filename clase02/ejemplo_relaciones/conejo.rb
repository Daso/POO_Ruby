class Ninho
  def initialize(nombre, edad, conejo)
    @nombre = nombre
    @edad = edad
    @conejo = conejo
  end
  
  def mostrar_zanahoria
    "Hola soy #{@nombre} y le doy zanahoria " + @conejo.acercarse
  end
  
  def acariciar_oreja
    "Hola soy #{@nombre} y le acaricio la oreja " + @conejo.mover_cola
  end
end

class Conejo
  def initialize(nombre)
    @nombre = nombre
  end
  
  def mover_cola
    "Soy #{@nombre} y estoy moviendo la cola"
  end
  
  def acercarse
    "Soy #{@nombre} me estoy acercando"
  end
end

conejo01 = Conejo.new("Rabito")
ninho01 = Ninho.new("Carlo", 5, conejo01)
puts ninho01.acariciar_oreja
puts ninho01.mostrar_zanahoria
