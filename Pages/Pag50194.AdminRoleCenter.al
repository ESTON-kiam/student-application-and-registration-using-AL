page 50194 "School Admin Role Center"
{
    Caption = 'School Admin Role Center';
    PageType = HeadlinePart;

    layout
    {
        area(content)
        {
            group(control1)
            {
                ShowCaption = false;
                Visible = true;
                field(HeadLine; hdltxt)
                {
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'Headline Text';
                }
            }
            group(control2)
            {
                ShowCaption = false;
                Visible = true;
                field(Headline1; hdltxt1)
                {
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'Headline Text1';
                }
            }
        }
    }

    var
        hdltxt: Text[100];
        hdltxt1: Text[100];

    procedure UpdateHeadlines()
    var
        CurrentTime: Time;
    begin
        CurrentTime := Time;

        if CurrentTime < 120000T then begin
            hdltxt := 'Good Morning';
            hdltxt1 := 'Check New Admissions';
        end
        else if CurrentTime < 180000T then begin
            hdltxt := 'Good Afternoon';
            hdltxt1 := 'Manage Faculty Meetings';
        end
        else begin
            hdltxt := 'Good Evening';
            hdltxt1 := 'Review Day’s Activities';
        end;
    end;

    trigger OnOpenPage()
    begin
        UpdateHeadlines();
    end;
}
