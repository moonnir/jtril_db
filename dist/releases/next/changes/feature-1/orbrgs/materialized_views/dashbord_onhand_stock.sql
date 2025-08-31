-- liquibase formatted sql
-- changeset ORBRGS:1756617447567 stripComments:false  logicalFilePath:feature-1\orbrgs\materialized_views\dashbord_onhand_stock.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/materialized_views/dashbord_onhand_stock.sql:null:b29ac85a6e3f3b0ef3c947fa9844f21e971e175d:create

create materialized view orbrgs.dashbord_onhand_stock (
    compcode,
    itemcode,
    amount,
    itemdes1,
    commgrup,
    qty
) build immediate using index
    refresh force
    on demand
    using enforced constraints
    disable on query computation
    disable query rewrite
as
    select
        ex.compcode,
        ex.itemcode,
        sum(ex.costrate) amount,
        ex.itemdes1,
        case
            when ex.compcode = '100' then
                '001'
            when ex.compcode = '102' then
                '002'
        end              commgrup,
        sum(ex.apprqnty) qty
    from
        (
            select
                st.compcode,
                st.itemcode,
                nvl(st.costrate, 0) costrate,
                it.itemdes1,
                st.apprqnty
            from
                nmenudtl st,
                nmitemas it
            where
                    st.compcode = it.compcode
                and st.itemcode = it.itemcode
                and st.compcode = '101'
                and nvl(st.trnsqnty, 0) = 0
                and st.docttype = 'RC'
                and st.bookcode is null
        ) ex
    group by
        ex.compcode,
        ex.itemcode,
        ex.itemdes1;

