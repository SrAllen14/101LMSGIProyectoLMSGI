(:26. Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquetamos por año.:)

declare option output:indent "yes";
<años_publicacion>
{
  for $x in distinct-values(/bookstore/book/year)
  order by $x descending
  return <año>{$x}</año>
}
</años_publicacion>