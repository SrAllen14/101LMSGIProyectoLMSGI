(:5. Reemplazar el nombre del cliente en la factura F001 por "Tu nombre y apellido":)

  for $doc in collection("facturasDB")
  where $doc/factura/@id="F001"
  return replace value of node $doc/factura/cliente/nombre with "Alvaro Allen"

