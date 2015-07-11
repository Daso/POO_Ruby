class Cliente

  attr_reader :impuesto 

  def initialize(nombre, ingreso_anual = 0)
    @nombre = nombre
    @ingreso_anual = ingreso_anual
    @impuesto = 0
  end
  
  def registrar_ingreso_anual(ingreso_anual)
    @ingreso_anual = ingreso_anual
  end
  
  def calcular_impuesto
    @impuesto = Calculadora.calcular_impuesto(@ingreso_anual)
  end
end


class Calculadora
  def self.calcular_impuesto(monto)
    (monto - 35000) * 0.3
  end
end

#--- programa principal MAIN

cliente01 = Cliente.new("Carlos", 45000)
cliente02 = Cliente.new("Sonia", 55000)
cliente01.calcular_impuesto
cliente02.calcular_impuesto
puts cliente01.impuesto
puts cliente02.impuesto
