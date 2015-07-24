class Mouse
  def self.instance
    @instance ||= new
  end

  private_class_method :new
end

mouse1 = Mouse.instance
mouse2 = Mouse.instance

print mouse1 == mouse2
