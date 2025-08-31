comment on column orbrgs.nmenudtl.apprdate is
    'This column is use for the approval date of transaction';

comment on column orbrgs.nmenudtl.apprqnty is
    'This column is use for the approval quantity of product';

comment on column orbrgs.nmenudtl.compcode is
    'This column is use for the hold company code';

comment on column orbrgs.nmenudtl.curntsts is
    'F=Free, T=Transfer, P=Pending for Receive, R=Receive, PM=Product Missing, L=Lost, UR=Unable to Received, NR=Not Received, RR=Replacement Request, PR=Product Replaced'
    ;

comment on column orbrgs.nmenudtl.docnumbr is
    'This column is use for the hold system generated number for each transaction';

comment on column orbrgs.nmenudtl.doctdate is
    'This column is use for the hold transaction date for each transaction';

comment on column orbrgs.nmenudtl.docttype is
    'This column is use for the document type for the transaction';

comment on column orbrgs.nmenudtl.event_type is
    'PM=Product Missing, UR=Unable to Received, RR=Replacement Request';

comment on column orbrgs.nmenudtl.itemcode is
    'This column is hold Item Code define for the each product.';

comment on column orbrgs.nmenudtl.orgnqnty is
    'This column is use for the quantity of product';

comment on column orbrgs.nmenudtl.partycde is
    'This column is use for the supplier/Customer/Party Code for the transaction';

comment on column orbrgs.nmenudtl.raisedby is
    'This column is use for hold the information who is raise the document.';

comment on column orbrgs.nmenudtl.reqddate is
    'This column is use for the request date of the transaction.';

comment on column orbrgs.nmenudtl.serlnumb is
    'This column is use for the Serial number for each transaction';

comment on column orbrgs.nmenudtl.subttype is
    'This column is use for the document subtype for the transaction';


-- sqlcl_snapshot {"hash":"28903e5764a3a5a853d892e38d788e0dd3f09b9e","type":"COMMENT","name":"nmenudtl","schemaName":"orbrgs","sxml":""}