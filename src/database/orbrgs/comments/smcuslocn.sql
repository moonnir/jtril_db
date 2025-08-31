comment on table orbrgs.smcuslocn is
    'One doctor''s chamber can be multiple locations. This table manages the schedule of doctor’s location.';

comment on column orbrgs.smcuslocn.compcode is
    'Company Code';

comment on column orbrgs.smcuslocn.createby is
    'This field stores the user id who inserts the transaction.';

comment on column orbrgs.smcuslocn.createdt is
    'This field store the date and time in when insert transaction is captured.';

comment on column orbrgs.smcuslocn.custmrid is
    'Customer ID';

comment on column orbrgs.smcuslocn.locncode is
    'Customer Location ID';

comment on column orbrgs.smcuslocn.numpatpday is
    'Customer / Doctor Number of patient per day';

comment on column orbrgs.smcuslocn.updateby is
    'This field stores the user id who edits the transaction.';

comment on column orbrgs.smcuslocn.updatedt is
    'This field stores the date and time in when update transaction is captured.';


-- sqlcl_snapshot {"hash":"e544105c0cb1752cfa4f323ee284bf4a541c60cb","type":"COMMENT","name":"smcuslocn","schemaName":"orbrgs","sxml":""}