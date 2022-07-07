pageextension 50102 Page_SalesOrderSubform extends "Sales Order Subform"
{
    // MOH  Mohammed
    // 001  MOH  06.17.2022  Disable edit Price and Line Amount based on 'Disable Price Edit' settings in User Setup

    layout
    {
        modify("Line Amount")
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