(:19. Mostrar cada uno de los precios de los libros, y al final una etiqueta con la suma de los precios.:)

<precios>
  {
   let $x :=
    for $z in /bookstore/bookstore
    return <book>{$</price/text()}</book>
  , $y:=<total>{format-number(sum(/bookstore/book/price/text()), '#.00)}$</total
    return ($x, $y)
  }
</precios>