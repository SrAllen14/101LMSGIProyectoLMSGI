(:15. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros.:)

declare option output:indent "yes";
<resultado>
{
  let $x := for $y in /bookstore/book/title/text() 
              return <book>{$y}</book>, 
      $t := count(/bookstore/book)
  return ($x, <total>{$t}</total>)
}
</resultado>