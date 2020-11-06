# creemos un metodo para hacer los calculos de máximo

def notas_mas_alta (array)
    array_maximo=[]
    array.each do |row|
        largo=row.count
        row_numero=row[1,largo].map!{|x| x.to_f}
        maximo=row_numero.inject(0){|max, x| x>=max ? x : max} 
        array_maximo.push [row[0],maximo]
    end
    return array_maximo
end


#Lee el archivo .data y lo guarda en un array de nombre data
require 'csv'
data = CSV.open('notas.data').readlines
data.reject! {|x| x.empty? }



#prueba el metodo
print notas_mas_alta(data)