@AbapCatalog.sqlViewName: 'ZSVSS_V_ART_001'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Artículos Arte'
@Metadata.allowExtensions: true

define view ZSVSS_B_ART_001
  as select from zsvss__art_001 as articulos
{
  key mandt  as mandt,
  key id     as Id,
      url    as Url,
      descr  as Descr,
      descr2 as Descr2,
      color  as Color,
      piezas as Piezas,
      stock  as Stock,
      // 0 neutral grey
      // 1 negative red
      // 2 critical yellow
      // 3 positive green
      case
      when articulos.stock <= 0 then 0
      when articulos.stock between 1 and 10 then 1
      when articulos.stock between 11 and 50 then 2
      when articulos.stock > 51 then 3
      else 0
      end    as status
}
