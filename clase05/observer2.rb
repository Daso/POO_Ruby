require "observer"
class Notifier
end

class SMSNotifier < Notifier
  def update(cuenta_bancaria)
    puts "Mensaje SMS enviado a : '#{cuenta_bancaria.titular}' saldo: S/. #{cuenta_bancaria.saldo}." if cuenta_bancaria.saldo < 500.0
  end
end

class EmailNotifier < Notifier
  def update(cuenta_bancaria)
      puts "Correo enviado a : '#{cuenta_bancaria.titular}' saldo: S/. #{cuenta_bancaria.saldo}." if cuenta_bancaria.saldo < 1000.0
  end
end


class CuentaBancaria
  include Observable 
  attr_reader :titular,:saldo
  def initialize(titular, saldo = 0.0)
    @titular,@saldo = titular,saldo
    add_observer EmailNotifier.new  
    add_observer SMSNotifier.new
  end
  
  def retiro(monto)
    @saldo -= monto
    changed
    notify_observers self
  end
end
cuenta = CuentaBancaria.new "Miguel Figueroa", 2500
cuenta.retiro 100
cuenta.retiro 1500
cuenta.retiro 800
