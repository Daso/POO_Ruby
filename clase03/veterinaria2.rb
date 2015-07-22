class Mascota
 
  def initialize(nombre, raza)
    @nombre = nombre
    @raza = raza
  end

  def calcular_precio_banho
    @costo_serivicio = 50.0
  end
end

class Perro < Mascota
  def initialize(nombre, raza, tamanho)
     super(nombre, raza)
     @tamanho = tamanho
  end
 
  def calcular_precio_banho
    @costo_serivicio = super + 100
  end
 
end

class Gato < Mascota
	def initialize(nombre, raza)
      super(nombre, raza)
      @vacunado = false
	end

	def vacunarse
      @vacunado = true
	end
end

class Caballo < Mascota
  def initialize(nombre, raza)
      super(nombre, raza)
  end
end

perro01 = Perro.new("Fido", "PitBull", "Chico")
gato01 = Gato.new("Satán", "Romano")
gato01.vacunarse
caballo01 = Caballo.new("Troton", "Pinto")
perro01.calcular_precio_banho
gato01.calcular_precio_banho
caballo01.calcular_precio_banho
puts perro01.inspect
puts gato01.inspect
puts caballo01.inspect
