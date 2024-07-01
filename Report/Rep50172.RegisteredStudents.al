report 50172 "Registered Students"
{
    Caption = 'Registered Students';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Report layout/RegisteredStudents Report.RDL';
    dataset
    {
        dataitem(RegisteredStudents; "Registered Students")
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
            column(FirstName; "First Name")
            {
            }
            column(MiddleName; "Middle Name")
            {
            }
            column(National_ID; National_ID)
            {
            }
            column(Email; Email)
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
