pageextension 70976575 UserSetupCard extends "User Setup"
{
    layout
    {
        addafter("Allow Posting From")
        {
            field("Department Code"; Rec."Department code")
            {
                ApplicationArea = All;
            } 
            field("Branch Code"; Rec."Branch Code")
            {
                ApplicationArea = All;
            }
            field("Full Name"; Rec."Full Name")
            {
                ApplicationArea = All;
            }
            field("Employee No."; Rec."Employee No.")
            {
                ApplicationArea = All;
            }
            field("Fin/Acc Officer"; Rec."Fin/Acc Officer")
            {
                ApplicationArea = All;
            }
            field("HR Manager"; Rec."HR Manager")
            {
                ApplicationArea = All;
            }
            field("Salary Setup"; Rec."Salary Setup")
            {
                ApplicationArea = All;
            }
        }
    }
}