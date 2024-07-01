page 50171 "Admin Cue"
{
    Caption = 'Admin Cue';
    PageType = CardPart;
    SourceTable = "Admin Cue";

    layout
    {
        area(content)
        {
            cuegroup(General)
            {
                Caption = 'General';

                field("No of Students"; Rec."No of Students")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No Of Students field.';
                    DrillDownPageId = "Registered Students";
                }
            }
            cuegroup(CourseReg)
            {
                field("No of Course Reg"; Rec."No of Course Reg")
                {
                    ApplicationArea = all;
                    DrillDownPageId = "Course Registrations";
                }
            }
            cuegroup(Rejected)
            {
                Caption = 'Rejected Applications';
                field("No Of Rejected Application"; Rec."No Of Rejected Application")
                {
                    ApplicationArea = all;
                    DrillDownPageId = "Rejected Applications";
                }
            }
            cuegroup(Users)
            {

                field("No Of users"; Rec."No Of users")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No of Users field.';
                    DrillDownPageId = Users;
                }
            }
            cuegroup(Application)
            {
                field("No of Application"; Rec."No of Application")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No of Application';
                    DrillDownPageId = "Student Applications";
                }
            }

            cuegroup(Courses)
            {

                field("No Of Courses"; Rec."No Of Courses")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registered Students field.';
                    DrillDownPageId = Courses;
                }
            }
            cuegroup(Instructor)
            {
                field(Instructors; Rec.Instructors)
                {
                    ApplicationArea = all;
                    DrillDownPageId = Instructors;
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
