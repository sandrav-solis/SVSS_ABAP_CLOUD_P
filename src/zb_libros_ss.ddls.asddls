@AbapCatalog.sqlViewName: 'ZV_LIBROS_SS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.allowExtensions: true
define view zb_libros_ss
  as select from ztb_libros_ss as libros
  association [0..*] to ZB_LIBROS_VENTAS as _ventas   on libros.id_libro = _ventas.id_libro
  association [0..*] to ZB_CLNTS_SS      as _Clientes on libros.id_libro = _Clientes.id_libro

{
  key id_libro  as IdLibro,
      bi_categ  as Categoria,
      titulo    as Titulo,
      autor     as Autor,
      editorial as Editorial,
      idioma    as Idioma,
      paginas   as Paginas,
      precio    as Precio,
      moneda    as Moneda,
      formato   as Formato,
      url       as Url,
      _ventas.ventas,
      // 0 neutral grey
      // 1 negative red
      // 2 critical yellow
      // 3 positive green
      case
      when _ventas.ventas <= 0 then 0
      when _ventas.ventas between 1 and 30 then 1
      when _ventas.ventas between 31 and 100 then 2
      when _ventas.ventas > 100 then 3
      else 0
      end       as status,
      _Clientes
}
