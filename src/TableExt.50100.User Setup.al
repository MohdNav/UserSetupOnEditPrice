tableextension 50100 Table_UserSetup extends "User Setup"
{
    // MOH  Mohammed
    // 001  MOH  06.17.2022  Created new field to disable price edit

    fields
    {
        field(50000; "Disable Edit Price"; Boolean)
        {
            Caption = 'Disable Edit Price';
            Description = '001';
        }
    }

}

