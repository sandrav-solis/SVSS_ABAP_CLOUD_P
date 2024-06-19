CLASS zsvss_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zsvss_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: it_art TYPE STANDARD TABLE OF zsvss__art_001.

    it_art = VALUE #(
    ( mandt = sy-mandt id = 1 descr = 'Mini colores' descr2 = space color = 'varios' piezas = 12 stock = 1
     url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-mini-colores-estuche-01_700x.jpg?v=1676577703')
    ( mandt = sy-mandt id = 2 descr = 'Lapiz' descr2 = 'Lápiz Blackwing 602 de grafito' color = 'Negro' piezas = 1 stock = 100
    url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-blackwing-602-short-4_edc63b68-0566-4df9-833c-e64e9a4a1f78_700x.jpg?v=1707098633' )
    ( mandt = sy-mandt id = 3 descr = 'Marcadores' descr2 = 'marcadores base  de agua' color = 'Varios' piezas = 5 stock = 12
    url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-zebra-mildliner-pasteles-01_700x.jpg?v=1711595335' )
    ( mandt = sy-mandt id = 4 descr = 'Borrador' descr2 = 'Borrador BLACKWING ' color = 'Negro' piezas = 1 stock = 7
    url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-replacement-eraser-black_700x.jpg?v=1596680852')
    ).


    DELETE FROM zsvss__art_001.
    INSERT zsvss__art_001 FROM TABLE @it_art.

    IF sy-subrc = 0.
      out->write( 'insert succesfull' ).
    ELSE.
      out->write( 'insert wrong' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
