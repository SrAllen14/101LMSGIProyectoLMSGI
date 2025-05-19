(:24. Mostrar los libros que contengan X mayúscula o minúscula en el título ordenados de manera descendente.:)

for $x in /bookstore/book[contains(title,"x") or contains(title,"X")]/title/text()
order by title descending
return $x