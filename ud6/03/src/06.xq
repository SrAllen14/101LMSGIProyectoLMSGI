(:6. Lista de libros ordenador por categoria de forma descendiente, y como segundo criterio por t´tiulo de forma descendiente. Mostrando el título con precio, donde el precio es mayor que 30 $. El resultado es un fichero de texto:)
for $x in /bookstore/book
where $x/price>30
order by $x/@category descending, $x/title descending
return concat(data($x/title),": " ,data($x/price),"$")
