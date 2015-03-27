def explode
 raise "boom" if rand(10) == 0
end

def risky
  begin
    10.times do
      explode
    end
   rescue TypeError
     puts $!
   end
   "hello"
end 

def defuse
  begin
    puts risky
  rescue RuntimeError => e
    puts e.message
  end
end
defuse
