table 50177 "Admin Cue"
{
    Caption = 'Admin Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Integer)
        {
            Caption = 'Primary Key';
        }
        field(2; "No of Students"; Integer)
        {
            Caption = 'No Of Students';
            FieldClass = FlowField;
            CalcFormula = count("Registered Students");
        }
        field(8; "No of Course Reg"; Integer)
        {
            Caption = 'No of Course Reg';
            FieldClass = FlowField;
            CalcFormula = count("Course Registration");
        }
        field(3; "No Of Rejected Application"; Integer)
        {
            Caption = 'No of Rejected Application';
            FieldClass = FlowField;
            CalcFormula = count("Rejected Applications");
        }
        field(4; "No Of users"; Integer)
        {
            Caption = 'No of Users';
            FieldClass = FlowField;
            CalcFormula = count(User);
        }
        field(5; "No of Application"; Integer)
        {
            Caption = 'No of Application';
            FieldClass = FlowField;
            CalcFormula = count("Student Application");
        }
        field(6; "No Of Courses"; Integer)
        {
            Caption = 'No Of Course';
            FieldClass = FlowField;
            CalcFormula = count(Course);
        }
        field(7; Instructors; Integer)
        {
            Caption = 'No of Instructors';
            FieldClass = FlowField;
            CalcFormula = count(Instructor);
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

}

