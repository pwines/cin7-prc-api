%dw 2.0
output application/json
---[payload.LocationList map ((item, index) ->{location: item.ID}),
payload.CustomerDetailsList map ((item, index) ->
Data: item.Addresses map ((item, index) -> 
{
Cin7ID__c: item.ID,
street: item.Line1 ++ item.Line2,
city: item.City,
state: item.State,
postalCode: item.Postcode,
country: item.Country,
AddressType: item.Type,
DefaultForType__c: item.DefaultForType
})
 )]