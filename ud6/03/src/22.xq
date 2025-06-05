(:22. Mostrar los libros escritos en años que terminan en tres.:)

declare option output:indent "yes";
<books>
{
  for $libro in //book
  where ends-with($libro/year/text(),'3')
  return $libro
}
</books>