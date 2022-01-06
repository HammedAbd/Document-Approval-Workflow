tableextension 50108 "General Ledger Setup" extends "General Ledger Setup"
{
    fields
    {
        field(50000; "VAT Payable Account"; Code[20])
        {
            Caption = 'VAT Payable Account';
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account";
        }
        field(50001; "WHT Payable Account"; Code[20])
        {
            Caption = 'WHT Payable Account';
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account";
        }
        field(50002; "NCDF Payable Account"; Code[20])
        {
            Caption = 'NCDF Payable Account';
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account";
        }

    }
}
