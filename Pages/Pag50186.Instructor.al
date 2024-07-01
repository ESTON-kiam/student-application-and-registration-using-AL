page 50186 Instructor
{
    Caption = 'Instructor';
    PageType = Card;
    SourceTable = Instructor;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

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
                    ApplicationArea = All;
                }

            }
        }
    }
}
