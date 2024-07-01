report 50176 "Instructor Course"
{
    Caption = 'Instructor Course';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Report layout/Instructors Course Report.RDL';
    dataset
    {
        dataitem(InstructorCourse; "Instructor Course")
        {
            column(logo; Company.Picture) { }
            column(CompanyName; Company.Name) { }
            column(CompanyAddress; Company.Address) { }
            column(CompanyEMail; Company."E-Mail") { }
            column(CompanyPhone; Company."Phone No.") { }
            column(CompanyHomePage; Company."Home Page") { }
            column(CourseID; "Course ID")
            {
            }
            column(CourseName; "Course Name")
            {
            }
            column(CoursePeriod; "Course Period")
            {
            }
            column(InstructorID; "Instructor ID")
            {
            }
            column(InstructorName; "Instructor Name")
            {
            }
            column(InstructorEmail; "Instructor Email")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    trigger OnInitReport()
    var
        myInt: Integer;
    begin
        Company.Get;
        Company.CalcFields(Picture);
    end;

    var
        Company: Record "Company Information";
}
