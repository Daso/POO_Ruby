class Mascota
  attr_accessor :nombre, :raza
  def initialize(nombre, raza)
    @nombre, @raza = nombre, raza
  end

  def saludar
    "Hola soy #{nombre}"
  end
end

class Perro < Mascota  
  attr_accessor :tamanho
  def initialize(nombre, raza, tamanho)
    super(nombre, raza)
    @tamanho = tamanho
  end
 
  def saludar
    "Soy un perro"
  end

  def ladrar
   "guau guau"
  end
end

class Gato < Mascota
  def initialize(nombre, raza)
    super(nombre, raza)
  end
  def maullar
  	"miau"
  end
end

perro = Perro.new("Fido", "Boxer", "Grande")
gato = Gato.new("Lucifer", "Romano")
puts perro.saludar
puts gato.saludar
