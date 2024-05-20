@AbapCatalog.sqlViewName: 'ZI_RENTING_SVSS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.allowExtensions: true
define view Z_I_RENTING_SVSS
  as select from Z_B_CARS_SVSS as cars
  association [1]    to Z_B_REM_DAYS_SVSS     as _RemDays     on cars.Matricula = _RemDays.Matricula
  association [0..*] to z_b_brands_SVSS       as _Brands      on cars.Marca = _Brands.Marca
  association [0..*] to Z_B_DET_CUSTOMER_SVSS as _DetCustomer on cars.Matricula = _DetCustomer.Matricula
{
  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      Unidad,
      Combustible,
      Consumo,
      FechaFabricacion,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      Desde,
      Hasta,
      // 0 neutral grey
      // 1 negative red
      // 2 critical yellow
      // 3 positive green
      case
      when _RemDays.Dias <= 0 then 0
      when _RemDays.Dias between 1 and 30 then 1
      when _RemDays.Dias between 31 and 100 then 2
      when _RemDays.Dias > 100 then 3
      else 0
      end as TiempoRenta,
       case
      when _RemDays.Dias <= 0 then 'New'
      when _RemDays.Dias between 1 and 30 then 'Error'
      when _RemDays.Dias between 31 and 100 then 'Progress'
      when _RemDays.Dias > 100 then 'Delivered'
      else ''
      end as Estado,
      _Brands.Imagen,
      _DetCustomer
}
