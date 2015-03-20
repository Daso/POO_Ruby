class Singleton
   class << self
     def instance
       @instance ||= new
     end
 
     private :new
   end
 end
 
print Singleton.instance
 
Singleton.new 
