(:28. Mostrar los títulos en una tabla html.:)

declare option output:indent "yes";

<html>
  <body>
    <table>
      <tr>
        <th>Título</th>
        {
          for $titulo in //book/title/text()
          return <tr><td>{$titulo}</td></tr>
        }
      </tr>
    </table>
  </body>
</html>