%dw 2.0
output application/json
var request = vars.requestPayload.requestBody.payload
---
{
    Id: item.ChangeEventHeader.recordIds[0],
    Cin7ID__c: payload.data.id,
    OwnerId: if(isEmpty(payload.SalesRepresentative)) "" else payload.SalesRepresentative
}