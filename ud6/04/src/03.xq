(:3. Mostrar el ID de factura como ID de cliente y correo del cliente:)
<clientes>
{
  for $x in collection(facturaDB)/factura
  return <cliente id="{$x/@id}">{$x//email/text()}</cliente>
}
</clientes>