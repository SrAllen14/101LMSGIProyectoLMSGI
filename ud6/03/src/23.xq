(:23. Mostrar los libros cuya categoría empiece por C.:)

for $x in /bookstore/book[starts-with(@category,"c")]/title/text()
return $x