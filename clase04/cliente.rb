class Cliente
  attr_accessor :nombre, :apellido, :mascotas, :saldo

  def initialize(nombre, apellido)
     @nombre = nombre
     @apellido = apellido     
     @mascotas = Array.new
     @saldo = 0.0
  end

  def add_mascota(mascota)
  	mascotas.push(mascota)
  end

  def reporte
    deuda
    respuesta = ""
    respuesta += "Nombre: "
    respuesta += nombre + " " + apellido + "\n"
    respuesta += "Mascotas: \n"
    mascotas.each do |mascota|
    	respuesta += "#{mascota.nombre.ljust(20)} #{mascota.costo_servicio} \n"
    end
    respuesta += "Deuda total:         #{saldo} \n"
    respuesta += "Cantidad de Mascotas: #{mascotas.size}"
  end 

private

  def deuda  	
  	mascotas.each do |mascota|
  	  self.saldo += mascota.costo_servicio
  	end
  end
   




end