require 'singleton'
class Mouse
  include Singleton
end

puts mouse1 = Mouse.instance
puts mouse2 = Mouse.instance

print mouse1 == mouse2
