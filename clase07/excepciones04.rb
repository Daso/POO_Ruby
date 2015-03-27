class MiExcepcionPersonal < StandardError​
  
end ​

class BankAccount

  def withdraw(amount)
  	raise MiExcepcionPersonal, "No se permiten montos negativos" if amount < 0 
  end


end

begin
  operation = BankAccount.new
  operation.withdraw(1000.0)
rescue MiExcepcionPersonal => ex
  puts "#{ex.class}: #{ex.message}" 
end
