page 50184 "Student Admin Role Center"
{
    Caption = 'Admin Role Center';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(SARC; "School Admin Role Center")
            {
                ApplicationArea = all;
            }
            part(AC; "Admin Cue")
            {
                ApplicationArea = All;
            }

        }
    }

    actions
    {
        area(Sections)
        {
            group("Students Registration")
            {
                action("Student Registration")
                {
                    ApplicationArea = All;
                    RunObject = Page "Student Registration";
                }
                action("&Student Registration")
                {
                    ApplicationArea = All;
                    RunObject = Page "Student Registrations";
                }
                action("&Student Application")
                {
                    ApplicationArea = all;
                    RunObject = Page "Student Applications";
                }
                action("&Rejected Application")
                {
                    ApplicationArea = All;
                    RunObject = Page "Rejected Applications";
                }
                action("&Registered Students")
                {
                    ApplicationArea = All;
                    RunObject = page "Registered Students";
                }
            }
            group("Courses")
            {
                action("Available Courses")
                {
                    ApplicationArea = All;
                    RunObject = Page Courses;
                }

            }
            group("&Course Reg")
            {
                action("Course Registered")
                {
                    ApplicationArea = All;
                    RunObject = page "Course Registration";
                }
            }
            group("&Instructors")
            {
                action(Instructors)
                {
                    ApplicationArea = All;
                    RunObject = page Instructors;
                }
                action("Instructor Course Card")
                {
                    ApplicationArea = all;
                    RunObject = page "Instructor Course";
                }
                action("&Instructor Course")
                {
                    ApplicationArea = all;
                    RunObject = page "Instructor Courses";
                }
            }

        }

        area(Creation)
        {
            action("Student Registrations")
            {
                ApplicationArea = All;
                RunObject = Page "Student Registration";
            }
            action(Course)
            {
                ApplicationArea = All;
                RunObject = Page Course;
                RunPageMode = Create;
            }
            action(Instructor)
            {
                ApplicationArea = All;
                RunObject = page Instructor;
            }
            group(Reports)
            {
                action("&Application Report")
                {
                    ApplicationArea = All;
                    RunObject = Report "Student Application";
                }
                action("&Course Report")
                {
                    ApplicationArea = All;
                    RunObject = Report Courses;
                }
                action("Registered Students")
                {
                    ApplicationArea = All;
                    RunObject = Report "Registered Students";
                }
                action("Rejected Application")
                {
                    ApplicationArea = All;
                    RunObject = Report "Rejected Applications";
                }
                action("Course Reg")
                {
                    ApplicationArea = all;
                    RunObject = Report "Course Registration";
                }
                action("Instuctors")
                {
                    ApplicationArea = All;
                    RunObject = Report Instructor;
                }
                action("Instructor Course")
                {
                    ApplicationArea = all;
                    RunObject = Report "Instructor Course";
                }
            }


        }


    }
}
