def explota
  a = rand(10)
  puts a
  raise "BOOM" if a == 0
end

def riesgo
  begin
  	10.times do
  	  explota	
  	end
  rescue TypeError
    puts $!
  end
  "Todo bien"
end

def cortar_cable
  begin
  	puts riesgo
  rescue RuntimeError => e
  	puts e.message
  else
  	puts "Nada malo se dio"
  ensure
  	puts "Fin del programa"
  end
end
cortar_cable
