table 50171 "Student Cue"
{
    Caption = 'Student Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Integer)
        {
            Caption = 'Primary Key';
        }
        field(2; "Registered Students"; Integer)
        {
            Caption = 'Registered Students';
            FieldClass = FlowField;
            CalcFormula = count("Registered Students");
        }
        field(3; "No Of Courses"; Integer)
        {
            Caption = 'No Of Course';
            FieldClass = FlowField;
            CalcFormula = count(Course);
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
