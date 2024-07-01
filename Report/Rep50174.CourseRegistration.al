report 50174 "Course Registration"
{
    Caption = 'Course Registration';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Report layout/CourseRegistration Report.RDL';
    dataset
    {
        dataitem(CourseRegistration; "Course Registration")
        {
            column(logo; Company.Picture) { }
            column(CompanyName; Company.Name) { }
            column(CompanyAddress; Company.Address) { }
            column(CompanyEMail; Company."E-Mail") { }
            column(CompanyPhone; Company."Phone No.") { }
            column(CompanyHomePage; Company."Home Page") { }
            column(StudentID; "Student ID")
            {
            }
            column(CourseID; "Course ID")
            {
            }
            column(CourseName; "Course Name")
            {
            }
            column(CoursePeriod; "Course Period")
            {
            }
            column(RegistrationDate; "Registration Date")
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
