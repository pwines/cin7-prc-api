%dw 2.0
output application/json
skipNullOn="everywhere"
import modules::countryLookup as countries

var address = payload.requestBody.payload
---
{
	ID: address.Cin7_AccountID__c,
		
	Addresses: [
		{
			  ID: address.Cin7ID__c,
			  Line1: address.Line_1__c,
	          Line2: address.Line_2__c,
	          City: address.City__c,
	          State: address.State__c,
	          Postcode: address.PostalCode__c,
	          Country: address.Country__c,
	          Type: address.Type__c,
	          DefaultForType: address.DefaultForType__c,
		}
	],
	
	Contacts: []

}