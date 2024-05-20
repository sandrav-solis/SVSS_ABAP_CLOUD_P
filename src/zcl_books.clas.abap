CLASS zcl_books DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_BOOKS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lt_acc_cat TYPE TABLE OF ztb_acc_categ_ss.
    lt_acc_cat = VALUE #(
 ( bi_categ = 'AA' tipo_acceso = '1' )
 ( bi_categ = 'BB' tipo_acceso = '1' )
 ( bi_categ = 'CC' tipo_acceso = '1' )
 ( bi_categ = 'AA' tipo_acceso = '2' )
 ( bi_categ = 'BB' tipo_acceso = '2' )
 ( bi_categ = 'CC' tipo_acceso = '2' )
 ( bi_categ = 'DD' tipo_acceso = '1' )
 ( bi_categ = 'EE' tipo_acceso = '1' )
 ( bi_categ = 'FF' tipo_acceso = '1' )
 ( bi_categ = 'DD' tipo_acceso = '2' )
 ( bi_categ = 'EE' tipo_acceso = '2' )
 ( bi_categ = 'FF' tipo_acceso = '2' )
 ).
    DELETE FROM ztb_acc_categ_ss.
    INSERT ztb_acc_categ_ss FROM TABLE @lt_acc_cat.


    DATA: lt_cat TYPE TABLE OF ztb_catego_ss.
    lt_cat = VALUE #(
 ( bi_categ = 'AA' descripcion = 'Categoria AA' )
 ( bi_categ = 'BB' descripcion = 'Categoria BB' )
  ( bi_categ = 'CC' descripcion = 'Categoria CC' )
 ( bi_categ = 'DD' descripcion = 'Categoria DD' )
 ( bi_categ = 'EE' descripcion = 'Categoria EE' )
 ( bi_categ = 'FF' descripcion = 'Categoria FF' )
 ).
    DELETE FROM ztb_catego_ss.
    INSERT ztb_catego_ss FROM TABLE @lt_cat.


    DATA: lt_cLIENTE TYPE TABLE OF ztb_clientes_ss.
    lt_cLIENTE = VALUE #(
 ( id_cliente = '00001' tipo_acceso = '1' descripcion = 'ALL' nombre = 'Rich' apellidos = 'Heilman' email = 'rh@email.com' url = space )
( id_cliente = '00002' tipo_acceso = '1' descripcion = 'ALL' nombre = 'Thomas' apellidos = 'Jung' email = 'tg@email.com' url = space )
( id_cliente = '00003' tipo_acceso = '1' descripcion = 'ALL' nombre = 'Joshua' apellidos = 'Bentley' email = 'jb@email.com' url = space )
( id_cliente = '00005' tipo_acceso = '2' descripcion = 'LIMITED' nombre = 'Antonio' apellidos = 'Cid' email = 'ac@email.com' url = space )
( id_cliente = '00006' tipo_acceso = '2' descripcion = 'LIMITED' nombre = 'Ricardo' apellidos = 'Ruiz' email = 'rr@email.com' url = space )
 ).
    DELETE FROM ztb_clientes_ss.
    INSERT ztb_clientes_ss FROM TABLE @lt_cLIENTE.


    DATA: lt_libro TYPE TABLE OF ztb_libros_ss.
    lt_libro = VALUE #( ( id_libro = '00001' bi_categ = 'AA' titulo = 'Complete ABAP' autor = 'Kiran Bandari'
                        editorial = 'SAP Press' idioma = 'EN' paginas = '912' Precio = '84.99' moneda = 'USD'
                        formato = 'e-book' url =  'https://www.sap-press.com/complete-abap_5567/' )
                        ( id_libro = '00002' bi_categ = 'CC' titulo = 'ABAP in the Cloud' autor = 'Gairik Acharya'
                        editorial = 'SAP Press' idioma = 'EN' paginas = '316' Precio = '74.99' moneda = 'USD'
                        formato = 'e-book' url =  'https://www.sap-press.com/abap-in-the-cloud_5236/' )
                        ( id_libro = '00003' bi_categ = 'BB' titulo = 'SAP Fiori Elements' autor = 'Rene Glavanovits'
                        editorial = 'SAP Press' idioma = 'EN' paginas = '413' Precio = '84.99' moneda = 'USD'
                        formato = 'e-book' url =  'https://www.sap-press.com/sap-fiori-elements_5641/' )
               ).
    DELETE FROM ztb_libros_ss.
    INSERT ztb_libros_ss FROM TABLE @lt_libro.


    DATA: lt_cts TYPE TABLE OF ztb_clnts_lib_ss.
    lt_cts = VALUE #(
       ( id_cliente = '00001' id_libro = '00001' )
       ( id_cliente = '00001' id_libro = '00002' )
       ( id_cliente = '00002' id_libro = '00003' )
       ( id_cliente = '00003' id_libro = '00002' )
       ( id_cliente = '00003' id_libro = '00001' )
    ).
    DELETE FROM ztb_clnts_lib_ss.
    INSERT ztb_clnts_lib_ss FROM TABLE @lt_cts.
  ENDMETHOD.
ENDCLASS.
