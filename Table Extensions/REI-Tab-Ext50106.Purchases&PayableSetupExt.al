tableextension 50106 PurchasesPayableSetup extends "Purchases & Payables Setup"
{
    fields
    {
        // Add changes to table fields here
        field(50200; "Purch. Requisition No."; Code[20])
        {
            TableRelation = "No. Series".Code;
        }
        field(50201; "Payment Requisition Nos."; Code[20])
        {
            TableRelation = "No. Series".Code;
        }
        field(50202; "CA & Imprest Nos."; Code[20])
        {
            TableRelation = "No. Series".Code;
        }
        field(50203; "Retirement Nos."; Code[20])
        {
            TableRelation = "No. Series".Code;
        }
        field(50204; "Store Return Nos."; Code[20])
        {
            TableRelation = "No. Series".Code;
        }
        field(50205; "Store Requisition Nos."; Code[20])
        {
            TableRelation = "No. Series".Code;
        }
    }

    var
        myInt: Integer;
}