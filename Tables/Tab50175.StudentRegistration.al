table 50175 "Student Registration"
{
    Caption = 'Student Registration';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Registration ID"; Code[20])
        {
            Caption = 'Registration ID';
            Editable = false;
        }
        field(33; "No series"; Code[20])
        {
            TableRelation = "No. Series";
        }

        field(2; "Application_ID"; Code[20])
        {
            Caption = 'Application_ID';
            TableRelation = "Student Application".Application_ID;
            trigger OnValidate()
            var
                StudentRegistration: Record "Student Registration";
            begin
                if StudentRegistration.Get("Application_ID") then begin
                    if StudentRegistration.Status in [StudentRegistration.Status::Registered, StudentRegistration.Status::Rejected] then
                        Error('The Application ID %1 has already been processed with a status of %2.', "Application_ID", StudentRegistration.Status);
                end;
            end;
        }
        field(3; "First Name"; Text[10])
        {
            Caption = 'First Name';
            TableRelation = "Student Application"."First Name";
        }
        field(5; "Middle Name"; Text[10])
        {
            Caption = 'Middle Name';
            TableRelation = "Student Application"."Middle Name";
        }
        field(9; "Course ID"; Code[20])
        {
            Caption = 'Course ID';
            TableRelation = "Student Application"."Course ID";
        }
        field(4; National_ID; Integer)
        {
            Caption = 'National_ID';
            TableRelation = "Student Application".National_ID;
        }
        field(7; Email; Code[70])
        {
            Caption = 'Email';
            TableRelation = "Student Application".Email;
        }
        field(6; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = ,Registered,Rejected;
            trigger OnValidate()
            var
                RegisteredStudents: Record "Registered Students";
                RejectedApplications: Record "Rejected Applications";
                StudentApplication: Record "Student Application";
            begin
                if Rec.Status = Status::Registered then begin
                    RegisteredStudents.Init();
                    RegisteredStudents."Student ID" := Rec."Registration ID";
                    RegisteredStudents."First Name" := Rec."First Name";
                    RegisteredStudents."Middle Name" := Rec."Middle Name";
                    RegisteredStudents.National_ID := Rec.National_ID;
                    RegisteredStudents."Course ID" := Rec."Course ID";
                    RegisteredStudents."Registration Date" := Today;
                    RegisteredStudents.Insert();

                    if StudentApplication.Get("Application_ID") then begin
                        StudentApplication.Status := StudentApplication.Status::Approved;
                        StudentApplication.Modify();
                    end;
                end else if Rec.Status = Status::Rejected then begin
                    RejectedApplications.Init();
                    RejectedApplications."Application_ID" := Rec."Application_ID";
                    RejectedApplications."First Name" := Rec."First Name";
                    RejectedApplications."Middle Name" := Rec."Middle Name";
                    RejectedApplications.National_ID := Rec.National_ID;
                    RejectedApplications."Course ID" := Rec."Course ID";
                    RejectedApplications.Email := Rec.Email;
                    RejectedApplications."Rejection Reason" := 'You do not meet our qualifications';
                    RejectedApplications."Rejection Date" := Today;
                    RejectedApplications.Insert();

                    if StudentApplication.Get("Application_ID") then begin
                        StudentApplication.Status := StudentApplication.Status::Pending;
                        StudentApplication.Modify();
                    end;
                end;

                if Rec.Status = Status::Rejected then
                    Rec."Registration ID" := '';
            end;
        }

        field(8; "Registered By"; Code[50])
        {
            Caption = 'Registered by';
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Registration ID")
        {
            Clustered = true;
        }
    }

    var
        noseries: Codeunit NoSeriesManagement;

    trigger OnInsert()
    var
        StudentApplication: Record "Student Application";
    begin
        "Registered By" := UserId;
        if Rec."Registration ID" = '' then begin
            noseries.InitSeries('STUDI', xRec."Registration ID", 0D, "Registration ID", "No series");
        end;

        if StudentApplication.Get("Application_ID") then begin
            if Status = Status::Registered then begin
                StudentApplication.Status := StudentApplication.Status::Approved;
                StudentApplication.Modify();
            end else if Status = Status::Rejected then begin
                StudentApplication.Status := StudentApplication.Status::Pending;
                StudentApplication.Modify();
            end;
        end;
    end;

    trigger OnModify()
    var
        StudentApplication: Record "Student Application";
    begin
        if "Application_ID" <> xRec."Application_ID" then
            Error('Application ID cannot be changed.');

        if Status = Status::Registered then begin
            if StudentApplication.Get("Application_ID") then begin
                StudentApplication.Status := StudentApplication.Status::Approved;
                StudentApplication.Modify();
            end;
        end else if Status = Status::Rejected then begin
            if StudentApplication.Get("Application_ID") then begin
                StudentApplication.Status := StudentApplication.Status::Pending;
                StudentApplication.Modify();
            end;

            Rec."Registration ID" := '';
        end;
    end;
}
