(:4. Mostrar el total de la factura 2:)

(:for $x in collection(facturaDB)/factura
where $x/@id="F002"
return $x//total/text():)

doc("facturasDB/factura2.xml")//total/text()