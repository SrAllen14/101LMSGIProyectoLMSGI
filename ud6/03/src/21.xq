(:21. Mostrar en la misma etiqueta el título y entre paréntesis el número de autores que tiene ese título.:)

<libros>
{
  for $libro in //book
  let $titulo:=$libro/author
  
}
</libros>