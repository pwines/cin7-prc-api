%dw 2.0
output application/json
---
    payload.LocationList map ((item, index) ->{
    Cin7ID__c: item.ID,
Name: item.Name,
//IsDefault__c: item.IsDefault
DefaultForType__c: item.IsDefault
})