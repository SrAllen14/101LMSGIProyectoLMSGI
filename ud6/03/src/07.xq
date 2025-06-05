(:Uso de at, for variable1 at variable2 expresiónXpath, siendo la segunda variable la posición de cada nodo. Genera el siguiente archivo XML:)
declare option output:indent "yes";

<books>
  {
    for $x at $y in /bookstore/book
    return <book>
             {$y}.{data($x/title)} 
           </book>
  }
</books>