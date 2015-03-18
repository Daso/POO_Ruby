=begin
Una empresa desea un sistema que permita calcular
a un empleado los impuestos que debe pagar a fin
de año. Para ello se deben registrar los pagos 
que tiene el empleado. Los empleados tienen un 
nombre, apellido, DNI. Por su parte los pagos 
tienen como datos un monto, un bono extraordinario 
y una descripción. Este bono si es que existe 
el sueldo recibe un 15% adicional sobre el monto. 

Se pide que el empleado pueda ingresar sus 
datos y sus pagos y reciba como respuesta 
el monto de los impuestos que debe pagar 
en el año. 

Las reglas para el pago de impuesto son las 
siguientes

En caso el total de los pagos recibidos no 
supere los 25,000 soles el pago es 0

Si es que es de 25,000 hasta 100,000 el pago 
será del 12% del monto que sobrepasa los 25,000 
soles. 

En caso el monto sea de más de 100,000 el pago 
será de 10% del monto que sobrepasa los 25,000

Por ejemplo si la suma de los pagos es de 75,000 
soles el pago será

75,000 – 25,000 = 50,000

Por lo tanto el pago será de 6,000 
(12 % de los 50,000)

Desarrollar el programa 
=end

require "./Empleado"
require "./Pago"

empleado = Empleado.new("Carlos", "Lopez", "09384855")
pago1 = Pago.new(5000, false, "pagoEnero")
pago2 = Pago.new(55000, false, "pagoFebrero")
pago3 = Pago.new(15000, false, "pagoMarzo")

empleado.agregar_pago(pago1)
empleado.agregar_pago(pago2)
empleado.agregar_pago(pago3)

puts empleado.impuesto

empleado2 = Empleado.new("Sonia", "Fernandez", "09984555")
pago4 = Pago.new(100000, true, "pagoEnero")
pago5 = Pago.new(100000, true, "pagoFebrero")
pago6 = Pago.new(100000, true, "pagoMarzo")

empleado2.agregar_pago(pago4)
empleado2.agregar_pago(pago5)
empleado2.agregar_pago(pago6)

puts empleado2.impuesto