codeunit 50104 "Lazada.AirwayBillDomain" implements "Lazada.IDomain"
{
    [ErrorBehavior(ErrorBehavior::Collect)]
    procedure Create(object: Text): Text
    begin

    end;

    [ErrorBehavior(ErrorBehavior::Collect)]
    procedure Retrieve(sourceArr: Text): Text
    begin

    end;

    [ErrorBehavior(ErrorBehavior::Collect)]
    procedure Update(object: Text): Text
    begin

    end;

    [ErrorBehavior(ErrorBehavior::Collect)]
    procedure Delete(object: Text): Text
    begin

    end;

    [ErrorBehavior(ErrorBehavior::Collect)]
    procedure GenerateURL(): Text;
    var
        JsonObj: JsonObject;
        Route: Text;
        JsonText: Text;
        BearerToken: Text;
        APIHelper: Codeunit "API Helper";
        APIMethod: Enum "Moo.API Method Enum";
        URLPrefix: TextConst ENU = 'https://kationtech-moo.azurewebsites.net';
        AirwayBillModel: Codeunit "Lazada.AirwayBillModel";
    begin
        // Map request headers to JsonObject
        JsonObj := AirwayBillModel.MapRequestHeaders();
        JsonObj.WriteTo(JsonText);

        // Get Token
        BearerToken := APIHelper.GetFreshAuthenticationToken();

        // Map API Route
        Route := URLPrefix + '/api/Lazada/Order/PrintAirWayBill';

        // Call API
        exit(APIHelper.CallWebservice(Route, BearerToken, JSONText, APIMethod::POST));
    end;

}
