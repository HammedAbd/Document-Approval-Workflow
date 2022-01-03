page 70976578 "REI-Doc. Approval WF Factbox"
{

    Caption = 'Document Approval WF Factbox';
    PageType = CardPart;
    SourceTable = "REI-Document Approval Entry";

    layout
    {
        area(content)
        {
            group(ContentArea)
            {
                field(DocumentHeading; DocumentHeading)
                {
                    ApplicationArea = All;
                    Caption = 'Document';
                    ToolTip = 'Specifies the document that has been approved.';
                    Editable = FALSE;
                }
            }
            group(Repeater)
            {
                field(Sequence; Rec.Sequence)
                {
                    ApplicationArea = All;
                }
                field(Sender; Rec.Sender)
                {
                    ApplicationArea = All;
                }
                field(Approver; Rec.Approver)
                {
                    ApplicationArea = All;
                }
                field("Approval Status"; Rec."Approval Status")
                {
                    ApplicationArea = All;
                }
                field("Document Date & Time"; Rec."Document Date & Time")
                {
                    ApplicationArea = All;
                    Caption = 'Approval Date & Time';
                }
            }
        }
    }
    VAR
        DocumentHeading: Text[250];
        Text000: TextConst ENU = 'Document';

    LOCAL PROCEDURE GetDocumentHeading(DocApprovalEntry: Record 70976576): Text[50];
    VAR
        Heading: Text[50];
    BEGIN

        Heading := Text000 + '-' + DocApprovalEntry."Document No.";
        EXIT(Heading);
    END;

    PROCEDURE UpdateApprovalEntriesFromSourceRecord(SourceRecordID: RecordID);
    VAR
        ApprovalEntry: Record 70976576;
    BEGIN
        Rec.SETRANGE("Record ID to Approve", SourceRecordID);
        ApprovalEntry.COPY(Rec);
        IF ApprovalEntry.FINDFIRST THEN
            Rec.SETFILTER(Approver, '<>%1', ApprovalEntry.Sender);
        IF Rec.FINDLAST THEN;
        CurrPage.UPDATE(FALSE);
    END;

    trigger OnFindRecord(DocumentHeading: Text): Boolean
    begin
        DocumentHeading := '';
        EXIT(Rec.FINDLAST);
    end;

    trigger OnAfterGetRecord()
    begin
        DocumentHeading := GetDocumentHeading(Rec);
    end;
}