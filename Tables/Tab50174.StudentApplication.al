table 50174 "Student Application"
{
    Caption = 'Student Application';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Application_ID; Code[20])
        {
            Caption = 'Application_ID';
            Editable = false;
        }
        field(33; "No series"; code[20])
        {
            TableRelation = "No. Series";
        }

        field(2; "First Name"; Text[10])
        {
            Caption = 'First Name';
        }
        field(3; "Middle Name"; Text[10])
        {
            Caption = 'Middle Name';
        }
        field(4; National_ID; Integer)
        {
            Caption = 'National_ID';
        }
        field(5; Email; code[70])
        {
            Caption = 'Email';
        }

        field(9; Gender; Option)
        {
            Caption = 'Gender';
            OptionMembers = ,Male,Female;
        }
        field(6; "Course ID"; Code[20])
        {
            Caption = 'Course ID';
            TableRelation = Course.Course_ID;
        }
        field(8; Status; Option)
        {
            OptionMembers = ,Pending,Approved;
            Editable = False;
        }
        field(11; "Certificate"; Blob)
        {
            Caption = 'Certificate';
        }
        field(10; "Date Of Application"; DateTime)
        {
            Caption = 'Date Of Application';
            Editable = False;
        }
    }
    keys
    {
        key(PK; Application_ID, "Course ID", "First Name", "Middle Name", National_ID, Email)
        {
            Clustered = true;
        }

    }
    var
        noseries: Codeunit NoSeriesManagement;

    trigger OnInsert()

    begin
        "Date Of Application" := CurrentDateTime;
        if Rec.Application_ID = '' then begin
            noseries.InitSeries('APPL', xRec.Application_ID, 0D, Application_ID, "No Series");
        end;
    end;
}
