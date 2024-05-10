%dw 2.0
output application/json
var contact = payload.requestBody.payload
---
{
	ID: "",
	Contacts: [
		{
		    ID: contact.Cin7ID__c,
			Email: contact.Email,
			Default: contact.Default__c,
		    IncludeInEmail: contact.Include_In_Emails__c,
			Comment: contact.Comment__c,
			MobilePhone: contact.MobilePhone,
			Name: contact.Name,
			Phone: contact.Phone,
			Fax: contact.Fax,
			Website: contact.Website__c,
			LastModifiedOn: contact.LastModifiedOn__c
		}
	]

}