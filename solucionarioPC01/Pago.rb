class Pago
  attr_accessor :monto, :bono, :descripcion

  def initialize(monto, bono, descripcion)
    @monto, @bono, @descripcion = monto, bono, descripcion
    monto_total
  end

  def monto_total
  	if bono
  		self.monto = self.monto * 1.15     
  	end
  end

end