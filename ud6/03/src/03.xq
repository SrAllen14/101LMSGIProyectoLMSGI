(:3. Crear una pagina web (03.html) cuyo titulo de la web "UD6-3.3 Listado de libros. Alvaro Allen Perlines" y que contenga una lista con viñetas con los titulos de los libros:)
declare option output:indent "yes";

<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>UD6-3.3 Listado de libros. Alvaro Allen Perlines</title>
</head>
<body>
  <h1>Listado de libros</h1>
  <ul>{
    for $x in /bookstore/book
    return <li>{$x/title/text()}</li>
  }
  </ul>
</body>
</html>