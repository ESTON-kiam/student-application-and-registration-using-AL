page 50190 "Registered Students"
{
    Caption = 'Registered Students';
    PageType = List;
    SourceTable = "Registered Students";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registration ID field.';
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
                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registration Date field.';
                }
            }
        }
    }
}
