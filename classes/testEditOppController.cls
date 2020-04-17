public class testEditOppController {
@TestVisible private final opportunity opp;
    public ApexPages.StandardController stdCon;
    public boolean isChanged{get;set;}
    public string callfunc{get;set;}
    public opportunity currentOpp{get;set;}

    public testEditOppController(ApexPages.StandardController stdCon){
        this.opp=(opportunity)stdCon.getRecord();
        currentopp=[select leadSource from opportunity where id=:this.opp.id limit 1];
    }  
    public void test(){
        if(currentOpp.LeadSource!=this.opp.LeadSource){
            isChanged=true;
        }
        update this.opp;
    }
    public pagereference redirectMethod(){
        PageReference pageRef=new PageReference('/' + this.opp.id);
        return pageRef;
    }
}