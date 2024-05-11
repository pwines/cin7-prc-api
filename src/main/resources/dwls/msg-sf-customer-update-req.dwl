%dw 2.0
output application/json
var request = vars.requestPayload.requestBody.payload
---
{
  "objectName": "Account",
  "externalField": "Cin7ID__c",
  "data": [
    {
      
      "Cin7ID__c": payload.data.ID,
      //"Sales_Representative__c": payload.data.SalesRepresentative,
      //"OwnerId": if(isEmpty(payload.data.SalesRepresentative)) "" else payload.data.SalesRepresentative
      
    }
  ]
}