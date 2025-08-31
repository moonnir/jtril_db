comment on table orbrgs.smcuschdl is
    'One doctor''s chamber can be multiple locations. This table manages the schedule of doctor’s location.';

comment on column orbrgs.smcuschdl.compcode is
    'Company Code';

comment on column orbrgs.smcuschdl.createby is
    'This field stores the user id who inserts the transaction.';

comment on column orbrgs.smcuschdl.createdt is
    'This field stores the date and time in when insert transaction is captured.';

comment on column orbrgs.smcuschdl.custmrid is
    'Customer ID';

comment on column orbrgs.smcuschdl.locncode is
    'Customer Location Code';

comment on column orbrgs.smcuschdl.schedulecd is
    'Customer Schedule code';

comment on column orbrgs.smcuschdl.updateby is
    'This field stores the user id who edit the transaction.';

comment on column orbrgs.smcuschdl.updatedt is
    'This field stores the date and time in when update transaction is captured.';

comment on column orbrgs.smcuschdl.weekday is
    'Day--Customer stay in particular location and day';


-- sqlcl_snapshot {"hash":"b8874afcb23a7b46f80828ef4208285738f76be5","type":"COMMENT","name":"smcuschdl","schemaName":"orbrgs","sxml":""}