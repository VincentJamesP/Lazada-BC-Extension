// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50103 WhseShipmentExt extends "Warehouse Shipment"
{
    layout
    {
        // Adding a new control field 'ShoeSize' in the group 'General'
        addlast(General)
        {
            field("URL"; Rec.URL)
            {
                ApplicationArea = all;
                Editable = false;
                ToolTip = 'Specifies the Airway Bill URL';
            }
        }
    }

    actions
    {
        // Adding a new action group 'Functions' in the 'Creation' area
        addlast("F&unctions")
        {
            action("Generate URL")
            {
                ApplicationArea = All;
                Caption = 'Print Airway Bill';
                Image = ImportCodes;

                trigger OnAction();
                begin
                    Rec.URL := AirwayBill.GenerateURL();
                end;
            }
        }
    }
    var
        AirwayBill: Codeunit "Lazada.AirwayBillDomain";
}