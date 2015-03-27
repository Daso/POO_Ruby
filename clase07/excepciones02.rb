def factorial(n)
  raise TypeError, "Se espera un entero" if not n.is_a? Integer  
  raise ArgumentError, "argumento incorrecto, se espera valor mayor a 0 y se recibe #{n}", caller if n < 0
  
  return 1 if n == 1
  n * factorial(n-1)
end

begin
  x = factorial("1")
rescue ArgumentError => ex
  puts "#{ex.class}: #{ex.message}" 
rescue TypeError => ex
  puts "#{ex.class}: #{ex.message}"
end
