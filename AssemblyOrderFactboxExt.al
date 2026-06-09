namespace DefaultPublisher.AOAttach;

using Microsoft.Assembly.Document;
using Microsoft.Foundation.Attachment;

pageextension 50102 AssemblyOrderDocAttachFBExt extends "Assembly Order"
{
    layout
    {
        addlast(FactBoxes)
        {
            part(DocumentAttachmentFactBox; "Doc. Attachment List Factbox")
            {
                ApplicationArea = All;
                SubPageLink = "Document Type" = field("Document Type"), "No." = field("No.");
            }
        }
    }
}
