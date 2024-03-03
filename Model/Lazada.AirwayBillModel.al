codeunit 50105 "Lazada.AirwayBillModel"
{
    procedure MapRequestHeaders(): JsonObject
    var
        JsonObj: JsonObject;
    begin
        JsonObj.Add('companyid', 3388);
        JsonObj.Add('packageid', 'FP039611829459619');
        JsonObj.Add('kti_storecode', 'lazadatestncci');
        exit(JsonObj);
    end;
}
