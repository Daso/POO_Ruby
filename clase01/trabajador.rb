class Trabajador
  attr_accessor :nombre, :apellido, :dni, :sueldo

  def initialize(nombre, apellido, dni, sueldo = 0)
     @nombre = nombre
     @apellido = apellido
     @dni = dni
     @sueldo = sueldo
  end

  def calcular_impuesto
    (@sueldo - 25000) * 0.3
  end

  def saludo
   "Hola soy #{@nombre} #{@apellido}"
  end
end

trabajador01 = Trabajador.new("Carlos","Perez", "09384456", 35000)
puts "    #{trabajador01.saludo}"
#trabajador01.nombre = "Felipe"
#puts trabajador01.nombre
