tableextension 50104 WhseShipHeaderExt extends "Warehouse Shipment Header"
{
    fields
    {
        // Add changes to table fields here
        field(64; URL; Text[2048])
        {
            Caption = 'URL';
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
    }
}