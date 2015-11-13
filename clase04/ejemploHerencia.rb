class Cliente
  def initialize(nombre, saldo = 0)
    @nombre = nombre
    @saldo = saldo
    @mascotas = Array.new
  end

  def agregar_mascota(mascota)
    @mascotas << mascota
  end

  def calcular_saldo  	
    @mascotas.each do |mascota|
      @saldo += mascota.calcular_costo_de_servicio	
    end
  end

  def reporte
  	calcular_saldo
    "#{@nombre}: su saldo es: #{@saldo}"
  end


end

class Mascota
  def initialize(nombre, raza)
    @nombre = nombre
    @raza = raza
  end
  def calcular_costo_de_servicio
    150 * 0.18
  end
end

class Perro < Mascota
  def initialize(nombre, raza, tamanho)
    super(nombre, raza)
    @tamanho = tamanho
  end
  def calcular_costo_de_servicio
  	case @tamanho
  	when "Grande"
  	    costo = 100
  	else
  		costp = 50
  	end
  	costo + super
  end
end

class Gato < Mascota
  def initialize(nombre, raza)
    super(nombre, raza)
  end  

  def calcular_costo_de_servicio
    25 + super
  end
end

class Canario < Mascota
  def initialize(nombre, raza)
    super(nombre, raza)
  end
  def calcular_costo_de_servicio
  	super
  end

end


gato01= Gato.new("fifi", "romano")
perro01 = Perro.new("Firulay", "PitBull", "Grande")
canario01 = Canario.new("Piolín", "Americano")
cliente01 = Cliente.new("Carlos", 0)
cliente01.agregar_mascota(gato01)
cliente01.agregar_mascota(perro01)
cliente01.agregar_mascota(canario01)
puts cliente01.reporte
