page 50172 "Student Cue"
{
    Caption = 'Student Cue';
    PageType = CardPart;
    SourceTable = "Student Cue";

    layout
    {
        area(content)
        {
            cuegroup(General)
            {
                Caption = 'General';

                field("Registered Students"; Rec."Registered Students")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registered Students field.';
                    DrillDownPageId = "Registered Students";
                }

            }
            cuegroup(Courses)
            {

                field("No Of Courses"; Rec."No Of Courses")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registered Students field.';
                    DrillDownPageId = Courses;
                }
            }

        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}

