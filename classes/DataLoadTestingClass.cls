public with sharing class DataLoadTestingClass {


    public String phoneVal { get; set; }

    public String countryVal { get; set; }

    public String cityVal { get; set; }

    public String nameVal { get; set; }


    public PageReference doInsert() {
    
    DataloadTest__c objdlt = new DataLoadTest__c();
    objdlt.name=nameVal;
    objdlt.City__c=cityVal;
    objdlt.Country__c=countryVal;
    objdlt.Phone__c=phoneVal;
    insert objdlt;
    pagereference ref = new pagereference('/apex/insertdlttest');
    ref.setredirect(true);
    return ref;
        
    }


}