(:9. Actualizar todas las facturas con importe inferior a 200 con el valor 200.:)

for $doc in collection("facturasDB")
where $doc/factura/importeTotal < 200
return replace value of node $doc/factura/importeTotal with 200