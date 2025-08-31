-- liquibase formatted sql
-- changeset ORBRGS:1756617447720 stripComments:false  logicalFilePath:feature-1\orbrgs\materialized_views\seize_eligible_sales_view.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/orbrgs/materialized_views/seize_eligible_sales_view.sql:null:b20d4344b8ab608ca8f8657e052b5c92ddc6c46a:create

create materialized view orbrgs.seize_eligible_sales_view (
    rwid,
    compcode,
    docnumbr,
    doctdate,
    itemcode,
    down_payment,
    no_of_installment,
    loan_amount,
    itemnm,
    partycde,
    prtyname,
    invno,
    sales_warehouse,
    overduescno,
    overdueamnt,
    vinnumbr,
    salerate,
    rcvemi,
    rcvamnt,
    dprcv,
    itemdes,
    itemmodl,
    apprqnty,
    refnumbr,
    zonlcode,
    collect_person
) build immediate using index
    refresh force
    on demand
    using enforced constraints
    disable on query computation
    disable query rewrite
as
    select
        *
    from
        vw_seize_eligible_sales_view;

