=begin
Una empresa tiene la necesidad de calcular algunos 
datos de sus ventas. Para ello tiene un arreglo 
con las ventas de los primeros seis meses. 
El programa lo que requiere calcular es el mes de 
la mayor venta, el mes de la menor venta, el promedio 
de ventas y los meses que se ha vendido más que el promedio.  
=end

class Empresa
  def initialize(ventas)
    @ventas = ventas
  end

  def mes_mayor_venta
    @ventas.index(@ventas.max) + 1
  end

  def mes_menor_venta
    @ventas.index(@ventas.min) + 1
  end

  def suma_de_ventas
  	suma = 0
  	for i in 0...@ventas.size
      suma = suma + @ventas[i] 
  	end
  	suma
    #(@ventas).reduce(:+)  
    #(@ventas).inject { |sum, n| sum + n } 
  end

  def promedio_de_ventas
     suma_de_ventas / @ventas.size
  end

  def meses_de_venta_sobre_el_promedio
    mejores_meses = []
    for i in 0...@ventas.size
      if @ventas[i] > promedio_de_ventas
         mejores_meses << (@ventas.index(@ventas[i]) + 1)
      end
    end   
    mejores_meses
  end
end

ventas = [75, 250, 300, 200, 150, 25]
empresa01 = Empresa.new(ventas)
puts empresa01.promedio_de_ventas
puts empresa01.meses_de_venta_sobre_el_promedio
