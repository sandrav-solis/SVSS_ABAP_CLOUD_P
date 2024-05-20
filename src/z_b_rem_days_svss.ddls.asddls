@AbapCatalog.sqlViewName: 'ZREM_DAYS_SVSS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaining days'
define view Z_B_REM_DAYS_SVSS
  as select from zrent_cars_ss
{
  key matricula as Matricula,
      marca     as Marca,
      case
      when alq_hasta <> ''
      then dats_days_between( cast(
      $session.system_date as abap.dats ), alq_hasta)
      end       as Dias
}
