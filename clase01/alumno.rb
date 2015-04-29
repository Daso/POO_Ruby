class Alumno
 
 attr_accessor :codigo, :nombre, :edad

 def initialize(codigo, nombre, edad)
   @codigo = codigo
   @nombre = nombre
   @edad = edad
 end

 def presentacion
   "Mi nombre es: #{@nombre}"
 end
end

alumno01 = Alumno.new("001", "Carlos", 23)


puts alumno01.presentacion
