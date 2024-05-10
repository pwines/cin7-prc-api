%dw 2.0
output application/json
var operationName = payload.data.payload.ChangeEventHeader.changeType as String ++ "-CONTACT"
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
			"Content-Type": "application/json",
			//"client_id": "d32c6443074d4e99a955e39a65030cab",
			"client_id": Mule::p('secure::cin7-sys-api.client_id'),
  			"client_secret": Mule::p('secure::cin7-sys-api.client_secret')
  			//"client_secret": "002E80255e1c4FD7aFC467d3E0fF89D8"
		}
	},
	"operation": operationName,
	"dwl": Mule::p("operation.$(operationName).dwl") as String,
	"requestBody": payload.data
}