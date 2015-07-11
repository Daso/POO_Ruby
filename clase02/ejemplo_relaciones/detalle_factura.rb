class Factura
  def initialize(razon_social, ruc, fecha)
    @razon_social = razon_social
    @ruc = ruc
    @fecha = fecha
    @detalles = Array.new
    @total_factura = 0
  end

  def agregar_detalle(descripcion, cantidad, precio_unitario)
    detalle = Detalle_factura.new(descripcion, cantidad, precio_unitario)
    @detalles << detalle
  end
  
  def procesar_factura
    calcular_total_factura
    calcular_igv
    calcular_total_a_pagar
  end
  
  
  def calcular_total_factura
    @detalles.each do |detalle|
      @total_factura += detalle.total_detalle
    end
  end
  
  def calcular_igv
    @igv_a_pagar = (@total_factura * 0.18).round(2)
  end
  
  def calcular_total_a_pagar
    @total_a_pagar = @total_factura + @igv_a_pagar
  end
  
  def reporte
    mensaje = ""
    mensaje += "Razón Social: #{@razon_social} \n"
    mensaje += "RUC: #{@ruc} \n"
    mensaje += "Fecha: #{@fecha} \n"
    mensaje += "=============DETALLE============== \n"
    @detalles.each do |detalle|
      mensaje += detalle.mostrar_detalle + "\n"
    end
    mensaje += "IGV #{@igv_a_pagar} \n"
    mensaje += "Total a pagar #{@total_a_pagar} \n"
  end
  
end

class Detalle_factura
   
  attr_reader :total_detalle
  
  def initialize(descripcion, cantidad, precio_unitario)
    @descripcion = descripcion
    @cantidad = cantidad
    @precio_unitario = precio_unitario
    calcular_total_detalle
  end
  
  def calcular_total_detalle
    @total_detalle = @cantidad * @precio_unitario
  end
  
  def mostrar_detalle
    "Desc. #{@descripcion} Cant. #{@cantidad} P.Unitario #{@precio_unitario} Total #{@total_detalle}"
  end
  
end

factura01 = Factura.new("UPC", "12763483", "10/7/2015")
factura01.agregar_detalle("Ceviche", 25, 10)
factura01.agregar_detalle("Lomo", 45, 8)
factura01.agregar_detalle("Pisco Sour", 15, 15)
factura01.procesar_factura
puts factura01.reporte
