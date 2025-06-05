(:5. Nombre de los cursos que no hayan finalizado.:)

for $doc in collection("Academia")/curso
where format-date() > current-date()
return $doc/nombre/text()