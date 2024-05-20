@AbapCatalog.sqlViewName: 'ZDET_CUSTL_SVSS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details Customers'
@Metadata.allowExtensions: true
define view Z_B_DET_CUSTOMER_SVSS
  as select from zrent_cust_ss
{
  key doc_id    as ID,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Correo,
      cntr_type as TipoContrato
}
