pageextension 50100 Page_UserSetup extends "User Setup"
{
    // MOH  Mohammed
    // 001  MOH  06.17.2022  Created new field to disable edit price

    layout
    {
        addafter("User ID")
        {
            field("Disable Edit Price"; Rec."Disable Edit Price")
            {
                ApplicationArea = All;
            }
        }
    }

}

