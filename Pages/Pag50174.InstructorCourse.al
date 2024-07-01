page 50174 "Instructor Course"
{
    Caption = 'Instructor Course';
    PageType = Card;
    SourceTable = "Instructor Course";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Course ID"; Rec."Course ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course ID field.';
                }
                field("Course Name"; Rec."Course Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course Name field.';
                }
                field("Course Period"; Rec."Course Period")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course Period field.';
                }
                field("Instructor ID"; Rec."Instructor ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Instructor ID field.';
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Instructor Name field.';
                }
                field("Instructor Email"; Rec."Instructor Email")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Instructor Email field.';
                }
            }
        }
    }
}
