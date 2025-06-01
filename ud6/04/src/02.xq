(:2. Filtrar facturas con un importe superior mayor de 200.:)
for $doc in collection(facturaDB)
where $doc/factura/total > 200
return $doc