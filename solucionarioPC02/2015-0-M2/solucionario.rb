class Terreno

  attr_accessor :area

  def initialize(frente, lado, distrito)
    @area = frente * lado
    @distrito = distrito
  end

  def costo
    monto_zona * area
  end

end

class Comercial < Terreno
  attr_accessor :estacionamiento, :distrito

  def initialize(frente, lado, distrito, estacionamiento)
    super(frente, lado, distrito)
    @estacionamiento = estacionamiento
  end

  def monto_zona
  	case distrito
  	when "San Isidro"
  		2000.0
  	when "Lince"
  		1500.0
  	else
  		900.0
  	end
  end

  def costo
  	super + 500 * estacionamiento
  end

end

class Residencial < Terreno

  attr_accessor :esquina, :distrito
  def initialize(frente, lado, distrito, esquina)
  	super(frente, lado, distrito)
  	@esquina = esquina
  end
  def monto_zona
  	case distrito
  	when "San Borja"
  		1800.0
  	else
  		1400.0
  	end
  end

  def costo    
    esquina ? super + (super * 0.3) : super  
  end
end


class Administrador
   attr_accessor :terrenos

   @terrenos = Array.new

  def self.crear_terrenos
    terreno01 = Comercial.new(10.0, 10.0,"San Isidro",  10.0)
    terreno02 = Comercial.new(20.0, 100.0, "Lince", 10.0)
    terreno03 = Comercial.new(30.0, 100.0,"San Isidro",  10.0)
    terreno04 = Residencial.new(10.0, 1.0,"San Borja", true)
    terreno05 = Residencial.new(20.0, 100.0,"Magdalena", false)
    
    @terrenos << terreno01
    @terrenos << terreno02
	@terrenos << terreno03
	@terrenos << terreno04
	@terrenos << terreno05
  end	

  def self.costo_total
    @terrenos.inject(0.0) { |mem, var| mem + var.costo }
  end

  def self.cantidad_terrenos_caros
    contador = 0

	@terrenos.each do |terreno|
  		contador += 1 if terreno.costo > 100000
	end
	contador
  end

  def self.hay_terrenos_baratos?
    flag = false
	@terrenos.each do |terreno|	
		if terreno.costo < 50000
  			flag = true   
  		end
  	end
    flag  	
  end

  def self.mensaje_terrenos_baratos
  	respuesta = hay_terrenos_baratos?
    if respuesta
  	  "Si hay terreno menor de 50000"
  	else
  	   "No hay terrenos menores de 50000"
  	end
  end

  def self.reporte_precio_terreno
    resultado = " "
    @terrenos.each do |terreno|
  		resultado += terreno.costo.to_s
  		resultado +=" \n "
	end
	resultado
  end

  def self.reporte
  	crear_terrenos
    puts "Costo de cada terreno"
	puts "---------------------"

	puts reporte_precio_terreno

	puts "Costo total"
	puts "------------"

	puts total = costo_total

	puts "Cantidad de terrenos de costo por sobre 100000"
	puts "----------------------------------------------"

	puts cantidad_terrenos_caros

    puts mensaje_terrenos_baratos
	
  end

end


Administrador.reporte






