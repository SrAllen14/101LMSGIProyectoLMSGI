(:1. Listar el nombre de todos los clientes.:)

for $doc in collection(facturasDB)
return $doc/factura/cliente/nombre/text()