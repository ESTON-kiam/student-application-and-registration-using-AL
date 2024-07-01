table 50178 "Registered Students"
{
    Caption = 'Registered Students';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Code[20])
        {
            Caption = 'Student ID';
            DataClassification = ToBeClassified;
        }
        field(3; "First Name"; Text[30])
        {
            Caption = 'First Name';
            DataClassification = ToBeClassified;
        }
        field(4; "Middle Name"; Text[30])
        {
            Caption = 'Middle Name';
            DataClassification = ToBeClassified;
        }
        field(8; "Course ID"; Code[20])
        {
            Caption = 'Course ID';
        }
        field(5; National_ID; Integer)
        {
            Caption = 'National ID';
            DataClassification = ToBeClassified;
        }
        field(6; Email; Code[70])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(7; "Registration Date"; Date)
        {
            Caption = 'Registration Date';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Student ID", "Course ID")
        {
            Clustered = true;
        }

    }
    trigger OnInsert()
    var
        myInt: Integer;
    begin
        "Registration Date" := Today;
    end;
}
