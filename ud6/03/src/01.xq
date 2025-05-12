(:1. Lista el título de los libros ordenados por título:)
for $x in /bookstore/book
order by $x /title
return $x /title/text()