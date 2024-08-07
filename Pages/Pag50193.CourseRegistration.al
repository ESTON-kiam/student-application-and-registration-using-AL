page 50193 "Course Registration"
{
    Caption = 'Course Registration';
    PageType = Card;
    SourceTable = "Course Registration";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.';
                }
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
                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registration Date field.';
                }
            }
        }
    }
}
