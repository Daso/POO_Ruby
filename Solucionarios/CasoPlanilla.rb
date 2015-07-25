=begin
La empresa tiene tres tipos de trabajadores: 
obreros, administrativos y de tiempo parcial.

Se desea almacenar los siguientes datos por tipo 
de trabajador:

Obreros: DNI, nombre, horas trabajadas y horas extras.

Administrativos: DNI, nombre, sueldo base, ventas 
efectuadas (S/.).

De tiempo parcial: DNI, nombre, sueldo base (no 
tienen derecho a horas extras).

El sueldo de cada tipo de trabajador se calcula de 
la siguiente forma:

Obreros: horas trabajadas * 30 + horas extras * 40

Administrativos: sueldo base + 5% de ventas efectuadas

De tiempo parcial: sueldo base – 6% (por seguros)

Se requiere una clase llamada Impresora que permita 
mostrar los datos de un trabajador específico 
identificado por el DNI

El Administrador requiere:

1. Registrar N trabajadores (para la solución 2 
obreros, 2 administrativos y 1 de tiempo parcial).

2. Calcular la cantidad de trabajadores.

3 Calcular la suma de los sueldos de todos los 
trabajadores.

4. Consultar el sueldo de un trabajador, pasando su 
número de DNI como parámetro.

5. Aplicar patrón Singleton para el uso de la clase 
Impresora.

Aplicar herencia y polimorfismo. 
=end

class Trabajador
  attr_reader :dni, :nombre	
  def initialize(dni, nombre)
  	@dni, @nombre = dni, nombre
  end
end

class Obrero < Trabajador
  attr_reader :horas_trabajadas, :horas_extras
  def initialize(dni, nombre, horas_trabajadas = 0, horas_extras = 0)
    super(dni, nombre)
    @horas_trabajadas = horas_trabajadas
    @horas_extras = horas_extras
  end
  def calcular_sueldo
    @horas_trabajadas * 30 + @horas_extras * 40
  end
end

class Administrativo < Trabajador
  def initialize(dni, nombre, sueldo_base = 0, ventas_efectuadas = 0)
    super(dni, nombre)
    @sueldo_base = sueldo_base
    @ventas_efectuadas = ventas_efectuadas
  end
  def calcular_sueldo
    @sueldo_base + @ventas_efectuadas * 0.05
  end
end

class TiempoParcial < Trabajador
  def initialize(dni, nombre, sueldo_base = 0)
  	super(dni, nombre)
  	@sueldo_base = sueldo_base
  end

  def calcular_sueldo
    @sueldo_base = @sueldo_base - (@sueldo_base * 0.06)
  end

end

class Planilla
  def initialize
  	@trabajadores = Array.new
  end

  def agregar_trabajador(trabajador)
  	@trabajadores << trabajador
  end

  def cantidad_de_trabajadores
    @trabajadores.size
  end

  def total_planilla
    total = 0.0
    @trabajadores.each do |trabajador|
      total += trabajador.calcular_sueldo
    end
    total
  end
 
  def buscador(dni)
    @trabajadores.each do |trabajador|
      if trabajador.dni == dni
      	return trabajador
      end
    end
  end

  def consulta_sueldo(dni)
    trabajador = buscador(dni)
    trabajador.calcular_sueldo 
  end

  def reporte(dni)
    Impresora.reporte(buscador(dni))
  end
end

require 'singleton'
class Impresora
  include Singleton
  def self.reporte(trabajador)
     puts "-------REPORTE--------"
     puts "Nombre: #{trabajador.nombre}"
     puts "DNI: #{trabajador.dni}"
     puts "Sueldo: #{trabajador.calcular_sueldo}"
  end
end

trabajador01 = TiempoParcial.new("11111111", "Carlos", 1000)
trabajador02 = Obrero.new("22222222", "Sandra", 100, 100)
trabajador03 = Administrativo.new("33333333", "Miguel", 1000, 10000)
trabajador04 = TiempoParcial.new("44444444", "Pepe", 2000)
planilla01 = Planilla.new
planilla01.agregar_trabajador(trabajador01)
planilla01.agregar_trabajador(trabajador02)
planilla01.agregar_trabajador(trabajador03)
planilla01.agregar_trabajador(trabajador04)

puts planilla01.reporte("11111111")
