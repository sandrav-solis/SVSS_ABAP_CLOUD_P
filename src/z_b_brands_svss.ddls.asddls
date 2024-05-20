@AbapCatalog.sqlViewName: 'ZV_BRANDSL_SVSS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
define view z_b_brands_SVSS
  as select from zrent_brands_ss
{
  key marca as Marca,
  @UI.hidden: true
      url   as Imagen
}
