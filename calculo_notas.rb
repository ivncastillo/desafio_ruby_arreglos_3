# creemos un metodo para hacer los calculos de máximo

def nota_mas_alta (array)
    largo=array.count
    array_numero=array[1,largo].map!{|x| x.to_f}
    return array_numero.inject(0){|max, x| x>=max ? x : max} 
end


#Lee el archivo .data y lo guarda en un array de nombre data
require 'csv'
data = CSV.open('notas.data').readlines
data.reject! {|x| x.empty? }



#prueba el metodo
print nota_mas_alta(data[1])