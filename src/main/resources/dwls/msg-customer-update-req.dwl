%dw 2.0
output application/json
var item = payload.requestBody.payload
---
{
    ID: item.Cin7_ID__c,
    Name: item.Name,
    Currency: item.Currency__c,
    PaymentTerm: item.Payment_Term__c,
    //Discount: item,
    TaxRule: item.Tax_Rule__c,
    Carrier: item.Default_Carrier__c,
    SalesRepresentative: item.Sales_Representative__c,
    Location: item.Default_Location__c,
    Comments: item.Comments__c,
    AccountReceivable: item.AccountReceivable__c,
    RevenueAccount: item.Revenue_Account__c,
    PriceTier: item.PriceTier__c,
    //TaxNumber: item,
    AttributeSet: item.Attribute_Set__c,
    Tags: item.Tags__c,
    Status: item.Status__c,
    CreditLimit: item.Credit_Limit__c,
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