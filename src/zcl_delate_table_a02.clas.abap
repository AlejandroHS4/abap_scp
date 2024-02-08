CLASS zcl_delate_table_a02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_delate_table_a02 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DELETE FROM zrent_brands_a02.

    IF sy-subrc EQ 0.
        out->write( 'All data deleted' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
