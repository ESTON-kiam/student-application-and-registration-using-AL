report 50171 Courses
{
    Caption = 'Courses';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Report layout/Course Report.RDL';
    dataset
    {
        dataitem(Course; Course)
        {
            column(logo; Company.Picture) { }
            column(CompanyName; Company.Name) { }
            column(CompanyAddress; Company.Address) { }
            column(CompanyEMail; Company."E-Mail") { }
            column(CompanyPhone; Company."Phone No.") { }
            column(CompanyHomePage; Company."Home Page") { }
            column(Course_ID; Course_ID)
            {
            }
            column(CourseName; "Course Name")
            {
            }
            column(CoursePeriod; "Course Period")
            {
            }
            column(Department; Department)
            {
            }
            column(Descrption; Descrption)
            {
            }
            column(AddedBy; "Added By")
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
