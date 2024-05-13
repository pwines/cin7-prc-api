%dw 2.0
output application/json
var item = payload.requestBody.payload
---
{
    Name: item.Name,
    Currency: item.Currency__c default "AUD",
    PaymentTerm: item.Payment_Term__c default "30 days",
    Discount: item.Discount__c default 0,
    TaxRule: item.Tax_Rule__c default "GST on Income",
    Carrier: item.Default_Carrier__c default "DEFAULT Carrier",
    SalesRepresentative: item.Sales_Representative__c default "Jez Prideaux",
    Location: item.Location_Name__c default "14 Degrees",
    Comments: item.Comments__c,
    AccountReceivable: item.AccountReceivable__c default "610",
    RevenueAccount: item.Revenue_Account__c default "200",
    PriceTier: item.PriceTier__c default "Wholesale",
    TaxNumber: item.Tax_number__c,
    AttributeSet: item.Attribute_Set__c default "Customer Attributes",
    Tags: item.Tags__c,
    Status: item.Status__c default "",
    CreditLimit: item.Credit_Limit__c default 0,
    IsOnCreditHold: item.On_Credit_Hold__c,
    LastModifiedOn: item.LastModifiedDate,
    AdditionalAttribute1: "",
    AdditionalAttribute2: "",
    AdditionalAttribute3: "",
    AdditionalAttribute4: "",
    AdditionalAttribute5: "",
    AdditionalAttribute6: "",
    AdditionalAttribute7: "",
    AdditionalAttribute8: "",
    AdditionalAttribute9: "",
    AdditionalAttribute10: "",


    Addresses: [],
    Contacts: []
}