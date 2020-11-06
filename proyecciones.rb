# creemos un metodo para hacer los calculos
def proyeccion_venta (array, incremento, inicio, fin)
    array_filtrado=array[inicio-1, fin].map!{|x| x*(1+incremento)}
    return array_filtrado.inject {|sum, x| sum+x} 
end

#Lee el archivo .data y lo guarda en un array de nombre data
require 'csv'
data = CSV.open('ventas_base.db' , converters: :numeric).readlines
data.reject! {|x| x.empty? }
data=data[0]

primer_semestre=proyeccion_venta(data, 0.1, 1, 6)
segundo_semestre=proyeccion_venta(data, 0.2, 7, 12)

puts "#{primer_semestre}"
puts "#{segundo_semestre}"

#Guarda el nuevo array en un archivo .data

CSV.open("resultados.data", "w") do |csv|
    csv << [primer_semestre]
    csv << [segundo_semestre]
end