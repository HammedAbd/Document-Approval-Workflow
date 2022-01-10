pageextension 50111 PurchasesPayableSetup extends "Purchases & Payables Setup"
{
    layout
    {
        addlast("Number Series")
        {
            field("Purch. Requisition No."; Rec."Purch. Requisition No.")
            {
                ApplicationArea = All;
            }
            field("Payment Requisition Nos."; Rec."Payment Requisition Nos.")
            {
                ApplicationArea = All;
            }
            field("CA & Imprest Nos."; Rec."CA & Imprest Nos.")
            {
                ApplicationArea = All;
            }
            field("Retirement Nos."; Rec."Retirement Nos.")
            {
                ApplicationArea = All;
            }
            field("Store Requisition Nos."; Rec."Store Requisition Nos.")
            {
                ApplicationArea = All;
            }
            field("Store Return Nos."; Rec."Store Return Nos.")
            {
                ApplicationArea = All;
            }

        }
    }
}