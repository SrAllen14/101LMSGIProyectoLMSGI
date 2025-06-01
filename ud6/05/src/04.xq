(:4. Listado de los cursos que imparte el profesor con el siguiente DNI: 33586315.:)

for $doc in collection ("Academia")
where $doc/curso/profesor[@idref=
  (for $y in collection("Academia") 
  where $y/profesor/dni = "33586315"
  return $y/profesor/@idref)
] 
return $doc/curso/nombre/text()