tableextension 50104 "REI-Employee" extends Employee
{
    fields
    {
        field(50020; "Employee Group"; Code[20])
        {
            Caption = 'Employee Group';
            DataClassification = ToBeClassified;
        }
        field(50021; Designation; Code[20])
        {
            Caption = 'Designation';
            DataClassification = ToBeClassified;
        }
    }
}
