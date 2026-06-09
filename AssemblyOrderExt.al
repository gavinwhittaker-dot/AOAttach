namespace DefaultPublisher.AOAttach;

using Microsoft.Assembly.Document;
using Microsoft.Foundation.Attachment;

pageextension 50101 AssemblyOrderExt extends "Assembly Order"
{
    actions
    {
        addlast(General)
        {
            action(AttachFile)
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                Image = Attach;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Open attachments for this assembly order.';
                trigger OnAction()
                var
                    RecRef: RecordRef;
                    DocumentAttachmentDetailsPage: Page "Document Attachment Details";
                begin
                    RecRef := Rec;
                    DocumentAttachmentDetailsPage.OpenForRecRef(RecRef);
                    DocumentAttachmentDetailsPage.RunModal();
                end;
            }
        }
    }
}
