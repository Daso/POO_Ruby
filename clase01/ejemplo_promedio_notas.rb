class Alumno

  attr_accessor :nombre, :codigo 

  def initialize(codigo, nombre, nota1, nota2)
  	@codigo = codigo
  	@nombre = nombre
  	@nota1 = nota1
  	@nota2 = nota2
  end

  def sumar
    @nota1 + @nota2
  end

  def promediar
    sumar / 2
  end

  def reporte
    "El promedio es: #{promediar}"
  end

end

alumno01 = Alumno.new("001", "Carlos", 12, 18)
alumno02 = Alumno.new("002", "Sandra", 10, 17)
alumno01.nombre = "Rubicundo"
puts alumno01.nombre

