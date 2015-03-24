require './student'
require './student_view'
require './student_controller'

app = StudentController.new("carlos", [12, 16, 14])
app.process
