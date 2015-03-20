require 'singleton'
class Printer
  include Singleton
end

printer = Printer.instance 
print  "Se ha creado una impresora: ", printer
