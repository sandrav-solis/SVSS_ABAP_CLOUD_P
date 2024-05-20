@AbapCatalog.sqlViewName: 'ZV_CLNTS_SVSS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'clientes'
@Metadata.allowExtensions: true
define view ZB_CLNTS_SS
  as select from ztb_clnts_lib_ss as a
    join         ztb_clientes_ss  as b on a.id_cliente = b.id_cliente
{
  key a.id_cliente as IdCliente,
  key a.id_libro   as id_libro,
  key tipo_acceso  as TipoAcceso,
      descripcion  as Descripcion,
      nombre       as Nombre,
      apellidos    as Apellidos,
      email        as Email,
      url          as Url
}
