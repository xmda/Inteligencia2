gem 'classifier', '~> 1.3.4'
#gem 'fast-stemmer', '~> 1.0.2'
require 'classifier'
b = Classifier::Bayes.new 'soporte', 'reparacion'
a = Classifier::Bayes.new 'juguemos', 'peliemos'
b.train_soporte "para soporte y asistencia"
#b.train_soporte = soporte => para soporte y asitencia
b.train_reparacion "reparacion y mantemiento de equipo de computo"
#b.train_reparacion = reparacion => para soporte y asitencia
a.train_juguemos "juguemos juntos"

a.train_peliemos  "peliemos juntos ahora"

#puts b.classify "necesito componer mi equipo porque tiene virus"

puts a.classify "juguemos juntos"
puts b.classify "no puedo instalar un programa necesito soporte y asesoria"



#a = [99.0,86.23,48.43,16.0,82.32,50.22,25.12,8.12,45.1]  #Será ordenado mediante quick sort.

#b = {0 => 'hola'}

#class Array
 # def quick_sort                    # el métoodo quick_sort será el encargado de ordenar recursivamente el arreglo.
  #  return self if length <= 1      # si el tamaño del arreglo es menor o igual a 1 no hay nada que ordenar.
   ## pivote = self[length / 2]       # La elección del pivote en este caso, es el elemento al centro del arreglo.
   # find_all { |i| i <  pivote }.quick_sort +   # se ordenan recursivamente todos los elementos más pequeños que el pivote
    #  find_all { |i| i == pivote } +            # más los elementos que son igual que el pivote
     # find_all { |i| i >  pivote}.quick_sort    # y se ordenan recursivamente los elementos más grandes que el pivote
  #end
#end
#@aa = []
#puts @aa = a.quick_sort

#puts b[0]
