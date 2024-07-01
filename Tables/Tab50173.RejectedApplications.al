table 50173 "Rejected Applications"
{
    Caption = 'Rejected Applications';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Application_ID"; Code[20])
        {
            Caption = 'Application ID';
            DataClassification = ToBeClassified;
        }
        field(2; "First Name"; Text[30])
        {
            Caption = 'First Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Middle Name"; Text[30])
        {
            Caption = 'Middle Name';
            DataClassification = ToBeClassified;
        }
        field(8; "Course ID"; Code[20])
        {
            Caption = 'Course ID';
            DataClassification = ToBeClassified;
        }
        field(4; National_ID; Integer)
        {
            Caption = 'National ID';
            DataClassification = ToBeClassified;
        }
        field(5; Email; Code[70])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(6; "Rejection Reason"; Text[100])
        {
            Caption = 'Rejection Reason';
            DataClassification = ToBeClassified;
        }
        field(7; "Rejection Date"; Date)
        {
            Caption = 'Rejection Date';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Application_ID")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        myInt: Integer;
    begin
        "Rejection Date" := Today;
    end;
}
