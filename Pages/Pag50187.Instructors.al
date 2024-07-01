page 50187 Instructors
{
    Caption = 'Instructors';
    PageType = List;
    SourceTable = Instructor;
    CardPageId = Instructor;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Instructor_ID; Rec.Instructor_ID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Instructor_ID field.';
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Instructor Name field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}
