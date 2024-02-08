@AbapCatalog.sqlViewName: 'ZV_REM_DAYSL_A02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Remaining days'
define view Z_B_REM_DAYS_A02 as select from zrent_cars_a02 {
    key matricula as Matricula,
        marca as Marca,
        case
        when alq_hasta <> ''
        then dats_days_between( cast ( $session.system_date as abap.dats ), alq_hasta ) 
        end as Dias
    
}
