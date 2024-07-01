table 50176 Instructor
{
    Caption = 'Instructor';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Instructor_ID; Code[10])
        {
            Caption = 'Instructor_ID';
            Editable = false;
        }
        field(33; "No Series"; Code[10])
        {
            TableRelation = "No. Series";
        }
        field(2; "Instructor Name"; Text[50])
        {
            Caption = 'Instructor Name';
        }
        field(3; Email; Code[70])
        {
            Caption = 'Email';
        }

    }
    keys
    {
        key(PK; Instructor_ID)
        {
            Clustered = true;
        }
    }
    var
        noseries: Codeunit NoSeriesManagement;

    trigger OnInsert()

    begin
        if Rec.Instructor_ID = '' then begin
            noseries.InitSeries('INSTR', xRec.Instructor_ID, 0D, Instructor_ID, "No Series");
        end;
    end;
}
