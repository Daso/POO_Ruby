require "./Pago"
class Empleado

 attr_accessor :nombre, :apellido, :dni, :pagos

 def initialize(nombre, apellido, dni) 
   @nombre, @apellido, @dni = nombre, apellido, dni
   @pagos = Array.new
 end
 
 def agregar_pago(pago)
   pagos.push(pago)
 end

 def calcular_total
   total = 0
   pagos.each do |pago|
     total += pago.monto  
   end
   total 
 end

 def impuesto
 	total = calcular_total
   if total > 100000
   	 (total - 25000) * 0.1
   elsif total <= 100000 && total >= 25000
   	  (total - 25000) * 0.12
   else
   	  0
   end
 end
end

