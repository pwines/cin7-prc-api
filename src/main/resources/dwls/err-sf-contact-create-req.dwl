%dw 2.0
output application/json
var request = vars.requestPayload.requestBody.payload

---
{
  "objectName": "Contact",
  "externalField": "Id",
  "data": [
    {
      "Id": request.ChangeEventHeader.recordIds[0],
      "Error_log__c": payload.description default "Error"
    }
  ]
}