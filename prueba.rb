
def read_alum(file_name)
file = File.open(file_name, 'r')
alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
file.close
alum
end

alumn_list = read_alum("alumnos.csv")


def promedio
  arreglo = read_alum("alumnos.csv")
  sum = 0.0
  arreglo.each do |el|
  nombre_alumno = el.shift
  el.collect! {|i| i.to_f}
    sum = el.inject(:+)
   puts "#{nombre_alumno} tiene un promedio de #{sum / el.size}"
 end
end


def inasistencias
falta = 0
arreglo = read_alum("alumnos.csv")

  arreglo.each do |el|
  nombre_alumno = el.shift
  el.each do |i|
    if falta != 0
      falta = 0
    else i == "A"
      falta = falta + 1
    end
  end
puts "#{nombre_alumno} tiene #{falta} inasistencias"
end
end


def aprovados
  arreglo = read_alum("alumnos.csv")
  sum = 0.0
  requisito = 5.0

  arreglo.each do |el|
  nombre_alumno = el.shift
  el.collect! {|i| i.to_f}
    sum = el.inject(:+)
    prom = sum / el.size

    if prom >= requisito
      puts "#{nombre_alumno} aprovó el curso"
    end
 end
end



condition = 0
while condition != 4
  puts ""
  puts "Elije una opción entre 1 y 3. Para salir, elije 4 "
  puts ""
  puts "#OPCION 1: Promedio cada alumno"
  puts "#OPCION 2: Cantidad de inasistencias"
  puts "#OPCION 3: Alumnos aprovados"
  condition = gets.chomp.to_i
  case condition
  when 1
  puts ""
    promedio
  puts ""
  when 2
  puts ""
    inasistencias
  puts ""
  when 3
  puts ""
    aprovados
  puts ""
  when 4
  puts ""
    puts "Hasta luego !"
  puts ""
  else
    puts "porfavor ingrese una opción válida"
  end
end
