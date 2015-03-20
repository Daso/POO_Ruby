class Notifier
  def update(bike, km)
    puts "Su eBike ha acumulado #{km} km, para un total de #{bike.kilometers} km de viaje."
    puts "Su eBike requiere ir al servicio de mantenimiento!" if bike.service <= bike.kilometers
  end
end

require 'observer'
 
class Ebike
  include Observable
 
  attr_reader :kilometers, :service
 
  def initialize(kilometers = 0, service = 500)
    @kilometers, @service = kilometers, service
    add_observer(Notifier.new)
  end
 
  def log(km)
    @kilometers += km
    changed
    notify_observers(self, kilometers)
  end
end

eBike = Ebike.new(300, 500)
eBike.log(100)
eBike.log(300)
