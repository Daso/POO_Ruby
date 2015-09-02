=begin
Una empresa de juegos requiere realizar pruebas para una aplicación 
para celulares que va a enviar a producción. La aplicación deberá 
simular el lanzamiento de dos dados. La suma de ambos deberá ser 
evaluada de la siguiente manera 

Si el resultado es 7 u 11 en el lanzamiento entonces se pierde.  
Si el resultado es 2 o 12 entonces se gana 

En cualquier otro caso el resultado será "indefinido" 
Desarrollar el programa orientado a objetos que me permita realizar 
lo solicitado.  
=end

class Juego
   
  def initialize
    @dado01 = 0
    @dado02 = 0
  end

  def evaluar_jugada
    case lanzar_dados
    when 7,11
      "Perdió"
    when 2,12
      "Ganó"
    else
      "Indefinido"
    end
  end

private

  def lanzar_dado
    rand(1..6)
  end

  def lanzar_dados
    @dado01 = lanzar_dado
    @dado02 = lanzar_dado
    @dado01 + @dado02
  end
end

juego01 = Juego.new
puts juego01.evaluar_jugada
