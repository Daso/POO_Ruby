class Student
  attr_accessor :name, :scores
  
  def initialize(name, scores)
    @name, @scores = name, scores
  end
  
  def total_scores
    @scores.inject(0.0) {|result, score| result + score }
  end
  
  def average
    total_scores / @scores.size
  rescue
    0.0
  end 
  
end
