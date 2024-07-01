page 50192 "Student Registrations"
{
    Caption = 'Student Registrations';
    PageType = List;
    SourceTable = "Student Registration";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Registration ID"; Rec."Registration ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registration ID field.';
                }
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
                    ApplicationArea = all;
                }
                field(National_ID; Rec.National_ID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the National_ID field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field("Registered By"; Rec."Registered By")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

}
