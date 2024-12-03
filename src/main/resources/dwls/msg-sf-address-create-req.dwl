%dw 2.0
output application/json
import modules::countryLookup as countries

var request = vars.requestPayload.requestBody.payload
//var countryName = countries::getCountryName(request.Country__c)

var resPayload = payload.data.Addresses filter((item) -> item.Line1 == request.Line_1__c
													 //and item.Line2 == request.Line_2__c
													 and item.City == request.City__c
													 and item.State == request.State__c
													 and item.Postcode == request.PostalCode__c
													 and item.Country == request.Country__c
													 and item.'Type' == request.Type__c
													 and item.DefaultForType == request.DefaultForType__c
													 
)
---
{
  "objectName": "CustomerAddress__c",
  "externalField": "Id",
  "data": [
    {
      "Id": request.ChangeEventHeader.recordIds[0],
      "Cin7ID__c": resPayload[0].ID,
      //"LastModifiedOn__c": resPayload[0].LastModifiedOn,
      //"Error_log__c": "",
      "Account__r": {
        "Cin7ID__c": request.Cin7_AccountID__c
      }
    }
  ]
}