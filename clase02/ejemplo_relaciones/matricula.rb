#encoding : utf-8
class Curso
  attr_reader :matriculados

  def initialize(codigo, nombre)
    @codigo = codigo
    @nombre = nombre
    @matriculados = Array.new
  end
  
  def matricular_alumno(alumno)
    @matriculados << alumno
  end
  
end

class Alumno
  
  attr_reader :nombre
  
  def initialize(nombre)
    @nombre = nombre
  end
end

alumno01 = Alumno.new("Carlos")
alumno02 = Alumno.new("Sofia")
alumno03 = Alumno.new("Luis")
curso01 = Curso.new("001", "Matemáticas")
curso01.matricular_alumno(alumno01)
curso01.matricular_alumno(alumno02)
curso01.matricular_alumno(alumno03)

curso01.matriculados.each do |alumno|
  puts alumno.nombre
end
