tableextension 50000 "REI-6575.UserSetupExt" extends "User Setup"
{
    fields
    {
        field(70976575; "Full Name"; Text[100])
        {
            Caption = 'Full Name';
            DataClassification = CustomerContent;
        }
        field(70976576; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            DataClassification = CustomerContent;
            TableRelation = Employee."No.";
            trigger Onvalidate()
            begin
                IF Employee.GET("Employee No.") THEN
                    "Employee Name" := Employee.FullName;
            end;
        }
        field(70976577; "Finance Officer E-mail"; Text[50])
        {
            Caption = 'Finance Officer E-mail';
            DataClassification = CustomerContent;
        }
        field(70976578; "Finance Officer User ID"; Code[20])
        {
            Caption = 'Finance Officer User ID';
            DataClassification = CustomerContent;
        }
        field(70976579; "HR Manager E-mail"; Text[50])
        {
            Caption = 'HR Manager E-mail';
            DataClassification = CustomerContent;
        }
        field(70976580; "HR Manager"; Boolean)
        {
            Caption = 'HR Manager';
            DataClassification = ToBeClassified;
        }
        field(70976581; "Department Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1));
        }
        field(70976582; "Branch Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2));
        }
        field(70976583; "Employee Name"; Text[50])
        {
            Editable = false;
        }
        field(70976584; "View Approved Documents"; Boolean)
        {
            Editable = true;
        }
        field(70976585; "Fin/Acc Officer"; Boolean)
        {
            Editable = true;
        }
    }
    var
    Employee: Record Employee;
}
