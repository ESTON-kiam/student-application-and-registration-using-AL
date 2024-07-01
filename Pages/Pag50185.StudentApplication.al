page 50185 "Student Application"
{
    Caption = 'Student Application';
    PageType = Card;
    SourceTable = "Student Application";

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
                    ToolTip = 'Specifies the value of the Application_ID field.';
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
                    ToolTip = 'Specifies the value of the National_ID field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = ALL;
                }
                field("Date Of Application"; Rec."Date Of Application")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}