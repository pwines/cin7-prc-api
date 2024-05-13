%dw 2.0
output application/json
var operationName = payload.data.payload.ChangeEventHeader.changeType as String 
					++ "-" ++
					if(payload.data.payload.ChangeEventHeader.entityName == "Account")  "CUSTOMER" 
					else "CONTACT"
---
{
	"type": "httpRequest",
	"httpRequest": {
		"protocol": Mule::p('cin7-sys-api.protocol') as String,
		"method": if(operationName contains "CREATE") "POST" else "PUT",
		"host": Mule::p('cin7-sys-api.host') as String,
		"url": Mule::p('operation.$(operationName).path') as String,
		"queryParams": {
		},
		"uriParams": {
		},
		"headers": {
			"x-correlation-id": correlationId,
			"client_id": "d32c6443074d4e99a955e39a65030cab",
//  			"client_secret": Mule::p('secure::cin7-sys-api.client_secret')
  			"client_secret": "002E80255e1c4FD7aFC467d3E0fF89D8"
		},
	},
	"operation": operationName,
	"dwl": Mule::p("operation.$(operationName).dwl") as String,
	"responseDwl": Mule::p("operation.$(operationName).sfDwl") as String,
	"errDwl": Mule::p("operation.$(operationName).errDwl") as String,
	"requestBody": payload.data
}