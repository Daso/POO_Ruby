class Singleton
  
      def self.instance
        @instance ||= new
      end
  
      private_class_method :new
    
  end
 
print Singleton.instance 

Singleton.new #ERROR : no se puede instanciar
