page 50181 "Rejected Application"
{
    Caption = 'Rejected Application';
    PageType = Card;
    SourceTable = "Rejected Applications";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(Application_ID; Rec.Application_ID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application ID field.';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.';
                }
                field("Middle Name"; Rec."Middle Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Middle Name field.';
                }
                field("Course ID"; Rec."Course ID")
                {
                    ApplicationArea = All;
                }
                field(National_ID; Rec.National_ID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the National ID field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field("Rejection Reason"; Rec."Rejection Reason")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rejection Reason field.';
                }
                field("Rejection Date"; Rec."Rejection Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rejection Date field.';
                }
            }
        }
    }
}
