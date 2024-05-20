@AbapCatalog.sqlViewName: 'ZV_CATEGO_SS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias'
define view zb_catego_ss as select from ztb_catego_ss
{
    key bi_categ as Categoria,
    descripcion as Descripcion
}
