report 50173 "Rejected Applications"
{
    Caption = 'Rejected Applications';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Report layout/Rejected Applications Report.RDL';
    dataset
    {
        dataitem(RejectedApplications; "Rejected Applications")
        {
            column(logo; Company.Picture) { }
            column(CompanyName; Company.Name) { }
            column(CompanyAddress; Company.Address) { }
            column(CompanyEMail; Company."E-Mail") { }
            column(CompanyPhone; Company."Phone No.") { }
            column(CompanyHomePage; Company."Home Page") { }
            column(Application_ID; Application_ID)
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
            column(RejectionReason; "Rejection Reason")
            {
            }
            column(RejectionDate; "Rejection Date")
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
