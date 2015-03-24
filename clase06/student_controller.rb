class StudentController
 
 def initialize(name, grades)
   @student_model = Student.new(name, grades)
   @student_view  = StudentView.new
 end

 def process
   @student_view.present(@student_model)
 end

end
