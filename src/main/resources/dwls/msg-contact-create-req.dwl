%dw 2.0
output application/json
var contact = payload.requestBody.payload
---
{
	ID: contact.Cin7_AccountID__c,
	Contacts: [
		{
			Email: contact.Email,
			Default: contact.Default__c,
		    IncludeInEmail: contact.Include_In_Emails__c,
			Comment: contact.Comment__c,
			MobilePhone: contact.MobilePhone,
			Name: if(!isEmpty(contact.Name.FirstName))contact.Name.FirstName ++ " " ++ contact.Name.LastName
				  else contact.Name.LastName,
			Phone: contact.Phone,
			Fax: contact.Fax,
			Website: contact.Website__c,
			JobTitle: contact.Job_Title__c,
			LastModifiedOn: contact.LastModifiedOn__c
		}
	]

}