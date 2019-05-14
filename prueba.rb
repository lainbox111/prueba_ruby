def read_alum(file_name)
file = File.open(file_name, 'r')
alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
file.close
alum
end


print read_alum("alumnos.csv")












#MENU á, é, í, ó, ú

condition = 0
while condition != 4
  puts "Elije una opción entre 1 y 3. Para salir, elije 4"
  puts "#OPCION 1: "
  puts "#OPCION 2: "
  puts "#OPCION 3: "
  condition = gets.chomp.to_i
  case condition
  when 1

  when 2
    sum_stock
  when 3
    max_stock
  when 4
    min_stock
    puts "Hasta luego !"
  else
    puts "porfavor ingrese una opción válida"
  end
end
