public  class Manager1
{

    public String Manager1 { get; set; }

    public decimal SalaryVal { get; set; }

    public String deptVal{ get; set; }

    public String BandVal { get; set; }

    public String nameVal { get; set; }

   
         public  PageReference save()
         {
             
    
    Manager__c obj1= new Manager__c();
    
    obj1.name=nameVal;
    
    obj1.Manger_band__c=BandVal ;
    
    obj1.Manager_Dept__c=deptVal ;
    
    obj1.Salary__c = SalaryVal ;
    
    insert obj1;
    
  PageReference pref= new PageReference('apexpages/setup/viewApexPage');
                
             return pref;
    }

     }