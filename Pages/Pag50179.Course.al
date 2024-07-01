page 50179 Course
{
    Caption = 'Course';
    PageType = Card;
    SourceTable = Course;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(Course_ID; Rec.Course_ID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course_ID field.';
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
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Department field.';
                }
                field(Descrption; Rec.Descrption)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Descrption field.';
                }
                field("Added By"; Rec."Added By")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}
