(:3. Mostrar el nombre y email de los profesores que imparten el curso "Bases de Datos OR":)

for $x in collection("Academia")
where $x/profesor[@id=
(for $y in collection ("Academia")
where $y/curso/nombre/text()="Bases de Datos OR"
return $y/curso/profesor/@idref)]
return concat($x/profesor/nombre/text()," ",$x/profesor/email/text())