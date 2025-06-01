(:2. Que cursos importen/o han impartido clases en el "Aula 1":)

for $doc in collection("Academia")
where $doc/curso/aula/@idref = 
  (for $aula in collection('Academia')//aula
  where $aula/nombre = 'Aula 1'
  return $aula/@id)
return $doc/curso/nombre/text()