pageextension 50101 Page_ItemCard extends "Item Card"
{
    // MOH  Mohammed
    // 001  MOH  06.17.2022  Disable edit on Unit Cost and Last Direct Cost based on 'Disable Price Edit' settings in User Setup

    layout
    {
        modify("Last Direct Cost")
        {
            Editable = not DisableEditCost;
        }
        modify("Standard Cost")
        {
            Editable = not DisableEditCost;
        }
        modify("Unit Cost")
        {
            Editable = not DisableEditCost;
        }
        modify("Unit Price")
        {
            Editable = not DisableEditCost;
        }
    }
    var
        DisableEditCost: Boolean;
        UserSetup: Record "User Setup";

    trigger OnOpenPage()
    begin
        if UserSetup.get(UserID) then begin
            DisableEditCost := UserSetup."Disable Edit Price";
        end;
    end;

}

