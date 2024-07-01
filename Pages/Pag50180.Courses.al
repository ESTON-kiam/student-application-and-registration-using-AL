page 50180 Courses
{
    Caption = 'Courses';
    PageType = List;
    SourceTable = Course;


    layout
    {
        area(content)
        {
            repeater(General)
            {
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
            }
        }
    }
}
