class StudentView
  
  def present(student)
  	puts "-------Reporte de promedios de alumno-------"
  	puts "Nombre :#{student.name}"
  	puts "Promedio :#{student.average}"
  	puts "-----------Notas del alumno-----------------"
  	student.scores.each do |score|
  		print score.to_s + " "
  	end
  end
  
end
