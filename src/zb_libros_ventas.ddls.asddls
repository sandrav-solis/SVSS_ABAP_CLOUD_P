@AbapCatalog.sqlViewName: 'ZV_LIBROS_VENTAS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'total Libros vendidos'
define view ZB_LIBROS_VENTAS as select from ztb_clnts_lib_ss
{   
     id_libro,
      count( * ) as ventas 
    
}
group by
    id_libro
