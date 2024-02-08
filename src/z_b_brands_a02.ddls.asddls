@AbapCatalog.sqlViewName: 'ZV_BRANDSL_A02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
define view Z_B_BRANDS_A02 as select from zrent_brands_a02
{
    key marca as Marca,
    url as Imagen   
}
