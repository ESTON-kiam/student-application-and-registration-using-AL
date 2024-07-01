table 50179 "Instructor Course"
{
    Caption = 'Instructor Course';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course ID"; Code[20])
        {
            Caption = 'Course ID';
            TableRelation = Course;
            trigger OnValidate()
            var
                Course: Record Course;
            begin
                if Course.Get("Course ID") then begin
                    "Course ID" := Course.Course_ID;
                    "Course Name" := Course."Course Name";
                    "Course Period" := Course."Course Period";
                end;

            end;
        }
        field(2; "Course Name"; Text[50])
        {
            Caption = 'Course Name';
            TableRelation = Course."Course Name";

        }
        field(3; "Course Period"; Integer)
        {
            Caption = 'Course Period';
            TableRelation = Course."Course Period";

        }
        field(4; "Instructor ID"; Code[20])
        {
            Caption = 'Instructor ID';
            TableRelation = Instructor;
            trigger OnValidate()
            var
                Instructor: Record Instructor;
            begin
                if Instructor.Get("Instructor ID") then begin
                    "Instructor ID" := Instructor.Instructor_ID;
                    "Instructor Name" := Instructor."Instructor Name";
                    "Instructor Email" := Instructor.Email;
                end
            end;
        }
        field(5; "Instructor Name"; Text[100])
        {
            Caption = 'Instructor Name';
            TableRelation = Instructor;
            Editable = false;
        }
        field(6; "Instructor Email"; Code[70])
        {
            Caption = 'Instructor Email';
            TableRelation = Instructor;
            Editable = false;
        }

    }
    keys
    {
        key(PK; "Course ID", "Instructor ID")
        {
            Clustered = true;
        }
    }
}
