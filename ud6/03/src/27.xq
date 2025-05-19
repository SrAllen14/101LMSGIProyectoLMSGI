(:27. Mostrar todos los autores eliminando los que se repiten y ordenados por el número de caracteres que tiene cada autor.:)

declare option output:indent "yes";

  for $x in distinct-values(/bookstore/book/author/text())
  order by string-length($x)
  return $x

