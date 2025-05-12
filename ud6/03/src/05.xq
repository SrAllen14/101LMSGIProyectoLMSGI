(:5. Crea una página web que contenga todos los libros de su categoría, en la lista aparece el título con colores distintos en función de la categoría:)

<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>UD6-3.5 Listado por categoría. Alvaro Allen Perlines</title>
</head>
<body>
  <h1>Bookstore</h1>
  <table>
    <tr>
      <th>Título</th>
      <th>Categoría</th>
    </tr>
    {for $x in /bookstore/book
     return <tr>
               <td>{data($x/title)}</td>
               <td>{data($x/@category)}</td>
            </tr>  
    }
  </table>
  <ul>{
    for $x in /bookstore/book
    return <li class="{data($x/@category)}">
             {data($x/title)}
           </li>
  }
  </ul>
</body>
</html>