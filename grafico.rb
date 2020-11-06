def chart (array)
    largo=array.length
    array=array.map!{|x| x.to_i}
    #maximo=array.inject(0){|max,x| x>=max? x : max}
    maximo=array.inject(0){|max,x| x>=max ? x : max} 
    array.each do |x|
        print "|"
        x.times {print '*'} 
        print"\n"
    end
    print ">"
    maximo.times {print '-'} 

end