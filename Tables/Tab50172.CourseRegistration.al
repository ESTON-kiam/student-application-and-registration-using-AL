table 50172 "Course Registration"
{
    Caption = 'Course Registration';
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "Student ID"; Code[20])
        {
            Caption = 'Registration ID';
            DataClassification = ToBeClassified;
            TableRelation = "Registered Students"."Student ID";
        }

        field(3; "Course ID"; Code[20])
        {
            Caption = 'Course ID';
            DataClassification = ToBeClassified;
            TableRelation = "Registered Students"."Course ID";
        }
        field(4; "Course Name"; Text[50])
        {
            Caption = 'Course Name';
            DataClassification = ToBeClassified;
            TableRelation = Course."Course Name";
        }
        field(5; "Course Period"; Integer)
        {
            Caption = 'Course Period';
            DataClassification = ToBeClassified;
            TableRelation = Course."Course Period";
        }
        field(6; "Registration Date"; DateTime)
        {
            Caption = 'Registration Date';
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        myInt: Integer;
    begin
        "Registration Date" := CurrentDateTime;
    end;

}

