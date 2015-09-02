class Alumno
  def initialize(codigo, nombre, t1 = 0, t2 = 0)
    @codigo = codigo
    @nombre = nombre
    @t1 = t1
    @t2 = t2
  end

  def calcular_resultado
    if @t1 >= 85 && @t2 >= 85
      "Aprobado"
    elsif @t1 < 85 && @t2 < 85
      "Reprobado"
    else
      "Observado"
    end
  end
end

alumno01 = Alumno.new("01", "Carlos", 100, 100)
alumno02 = Alumno.new("02", "Miguel", 85, 85)
alumno03 = Alumno.new("03", "Luis", 84, 85)
alumno04 = Alumno.new("04", "Pepe", 85, 84)
alumno05 = Alumno.new("05", "Sonia", 84, 84)
puts alumno05.calcular_resultado
