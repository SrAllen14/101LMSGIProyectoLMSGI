(:6. Inserta un nuevo nodo estado con valor pagada dentro de la factura F001:)

for $doc in collection("facturasDB")
where $doc/factura/@id="F001"
return insert node <estado>pagada</estado> as last into $doc/factura