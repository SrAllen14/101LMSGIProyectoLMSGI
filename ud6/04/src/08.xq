(:8. Renombrar el nodo total por importeTotal:)

for $doc in collection("facturasDB")
return rename node $doc/factura/total as "importeTotal"