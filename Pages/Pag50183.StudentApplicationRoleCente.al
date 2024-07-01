page 50183 "Student Application Role Cente"
{
    Caption = 'Student Application Role Center';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {

            part(RCH; "Role center Headlines")
            {
                ApplicationArea = all;
            }
            part(SC; "Student Cue")
            {
                ApplicationArea = All;
            }

        }
    }

    actions
    {
        area(Sections)
        {
            group("&Students Application")
            {
                action("Students Application")
                {
                    ApplicationArea = All;
                    RunObject = Page "Student Application";
                }
                action("Student Registered")
                {
                    ApplicationArea = All;
                    RunObject = page "Registered Students";
                }

            }
            group("&Courses")
            {
                action("Courses")
                {
                    ApplicationArea = all;
                    RunObject = page "Courses";
                }
            }
            group("&Course Registration")
            {
                action("Course Registration")
                {
                    ApplicationArea = All;
                    RunObject = page "Course Registrations";
                }
            }
        }

        area(Creation)
        {
            action("Student Application")
            {
                ApplicationArea = All;
                RunObject = Page "Student Application";
                RunPageMode = Create;
            }



        }

    }
}