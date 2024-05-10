%dw 2.0
output application/json
var request = vars.requestPayload.requestBody.payload
---
{
  "objectName": "Account",
  "externalField": "Cin7ID__c",
  "data": [
    {
      
      "Cin7ID__c": payload.data.id,
      "Sales_Representative__c": payload.SalesRepresentative,
      "OwnerId": if(isEmpty(payload.SalesRepresentative)) "" else payload.SalesRepresentative
      
    }
  ]
}