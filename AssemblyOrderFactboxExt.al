namespace DefaultPublisher.AOAttach;

using Microsoft.Assembly.Document;
using Microsoft.Foundation.Attachment;

pageextension 50102 AssemblyOrderDocAttachFBExt extends "Assembly Order"
{
    layout
    {
        addlast(FactBoxes)
        {
            part(DocumentAttachmentDetails; "Document Attachment Details")
            {
                ApplicationArea = All;
                SubPageLink = "Document Type" = field("Document Type"), "No." = field("No.");
            }
        }
    }
}
