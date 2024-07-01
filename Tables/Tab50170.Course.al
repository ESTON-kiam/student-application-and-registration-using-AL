table 50170 Course
{
    Caption = 'Course';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Course_ID; Code[20])
        {
            Caption = 'Course_ID';
            Editable = false;
        }
        field(333; "No series"; code[20])
        {
            TableRelation = "No. Series";

        }
        field(2; "Course Name"; Text[50])
        {
            Caption = 'Course Name';
        }
        field(3; "Course Period"; Integer)
        {
            Caption = 'Course Period';
        }
        field(4; Department; Text[50])
        {
            Caption = 'Department';
        }
        field(5; Descrption; Text[100])
        {
            Caption = 'Descrption';
        }
        field(6; "Added By"; Code[50])
        {
            Caption = 'Add By';
        }
    }
    keys
    {
        key(PK; Course_ID, "Course Name", "Course Period")
        {
            Clustered = true;
        }
    }
    var
        noseries: Codeunit NoSeriesManagement;

    trigger OnInsert()

    begin
        "Added By" := UserId;
        if Rec.Course_ID = '' then begin
            noseries.InitSeries('COURSE', xRec.Course_ID, 0D, Course_ID, "No Series");
        end;
    end;
}
