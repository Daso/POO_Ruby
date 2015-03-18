require "./cliente"
require "./perro"
require "./gato"
require "./canario"

cliente = Cliente.new("Carlos", "Lopez")
perro = Perro.new("Fido", "G",12)
gato = Gato.new("Lucifer",7)
canario = Canario.new("Pio",8,"Amarillo")

cliente.add_mascota(perro)
cliente.add_mascota(gato)
cliente.add_mascota(canario)

puts cliente.reporte

