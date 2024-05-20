@AbapCatalog.sqlViewName: 'ZV_ACC_CATEG_SS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Acceso Categorias'
define view zb_acc_categ_ss as select from ztb_acc_categ_ss
{
    key bi_categ as BiCateg,
    key tipo_acceso as TipoAcceso
}
