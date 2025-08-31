comment on table orbrgs.smcusmas is
    'This table identifies the customer (doctor/chemist) Information.';

comment on column orbrgs.smcusmas.compcode is
    'Company Code';

comment on column orbrgs.smcusmas.createby is
    'This field stores the user id who inserts the transaction.';

comment on column orbrgs.smcusmas.createdt is
    'This field store the date and time in when insert transaction is captured.';

comment on column orbrgs.smcusmas.custclascd is
    'Customer Class code determine customer type (doctor or chemist).';

comment on column orbrgs.smcusmas.custcrlimit is
    'Customer Credit limit.';

comment on column orbrgs.smcusmas.custcrmaxage is
    'Customer credit maximum time(days) limit.';

comment on column orbrgs.smcusmas.custmrid is
    'Customer ID';

comment on column orbrgs.smcusmas.custposid is
    'Customer position or rank.';

comment on column orbrgs.smcusmas.custsubclscd is
    'Customer sub class code.';

comment on column orbrgs.smcusmas.degreename is
    'Customer degree determines the qualification or professional degree.';

comment on column orbrgs.smcusmas.numpatpday is
    'Number of patient per day.';

comment on column orbrgs.smcusmas.spclstcd is
    'Customer (doctor) specialist code e.g. “child specialist- code ‘003’”.';

comment on column orbrgs.smcusmas.updateby is
    'This field stores the user id who edits the transaction.';

comment on column orbrgs.smcusmas.updatedt is
    'This field stores the date and time in when update transaction is captured.';


-- sqlcl_snapshot {"hash":"02f6bebe701d89eda50e3b6147e0a94ecd5788cf","type":"COMMENT","name":"smcusmas","schemaName":"orbrgs","sxml":""}