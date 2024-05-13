%dw 2.0
output application/json
---
flatten(payload.CustomerDetailsList map ((item, index) ->

{account__c: item.ID ,
Data: item.Contacts map (item, index) -> 
{Cin7ID__c: item.ID,
LastName: item.Name,
Phone: item.Phone,
MobilePhone: item.MobilePhone,
Fax: item.Fax,
Email: item.Email,
Website__c: item.Website,
Comment__c: item.Comment,
Default__c: item.Default,
Include_In_Emails__c:item.IncludeInEmail,
//LastModifiedOn__c:
//Cin7_AccountID__c
}
}
 ))