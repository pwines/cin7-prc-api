%dw 2.0
output application/json

var request = vars.requestPayload.requestBody.payload
---
{
  "objectName": "Account",
  "externalField": "Id",
  "data": [
    {
      "Id": request.ChangeEventHeader.recordIds[0],
      "Cin7ID__c": payload.data.ID,
      //"Sales_Representative__c": payload.data.SalesRepresentative,
      //"OwnerId": if(isEmpty(payload.data.SalesRepresentative)) "" else payload.data.SalesRepresentative
      
    }
  ]
}


//
//{
//    Id: item.ChangeEventHeader.recordIds[0],
//    Cin7ID__c: payload.data.id,
//    OwnerId: if(isEmpty(payload.SalesRepresentative)) "" else payload.SalesRepresentative
//}