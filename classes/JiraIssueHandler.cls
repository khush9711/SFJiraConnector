public class JiraIssueHandler implements ITrigger{
    
    Set<Id> JiraIssueId = new Set<Id>();
    List <Case> caseList = new List<Case>();
    Map<DateTime,GnrSf__JiraIssue__c> JiraIssuedt= new Map<DateTime,GnrSf__JiraIssue__c>();
    
    public void bulkBefore(){ 
        
    }
    public void bulkAfter(){
        
        for(SObject so: Trigger.new){
            GnrSf__JiraIssue__c gnji= (GnrSf__JiraIssue__c)so;
            List<String> StatusLabel= new List<String>();
            Set<String> SetStatusLabel= new set<String>();
            StatusLabel=System.Label.Jira_Issue_Status.split(',');
            SetStatusLabel.addAll(StatusLabel);
            
            if(SetStatusLabel.contains(gnji.GnrSf__Status__c)){
                JiraIssuedt.put(gnji.LastModifiedDate,gnji);
            		    JiraIssueId.add(gnji.id);
            }
        } 
        
        for(GnrSf__JiraRelationship__c JiRel:[SELECT Id, GnrSf__CaseRelation__c, GnrSf__JiraIssueId__c, GnrSf__JiraIssue__c,GnrSf__JiraIssue__r.LastModifiedDate
                                              FROM GnrSf__JiraRelationship__c
                                              Where GnrSf__JiraIssue__c In : JiraIssueId and GnrSf__JiraIssue__r.LastModifiedDate = :dateTime.valueOf(JiraIssuedt)
                                             	and GnrSf__CaseRelation__c!=null
                                             ]){
                                                  Case Cs = new Case(Id=JiRel.GnrSf__CaseRelation__c);
                                                  Cs.JiraIssue_Id__c = JiRel.GnrSf__JiraIssue__c;
                                                  Cs.JiraStatusUpdate__c = JiRel.GnrSf__JiraIssue__r.LastModifiedDate;
                                                  Cs.Reason_to_send_email__c = 'Waiting For Support';
                                                  caseList.add(Cs);       
                                              }
        
    }
    public void afterInsert(SObject so){
            
          
        
    }
    public void afterUpdate(SObject oldSo, SObject so)
    {
            
        
    }
    public void beforeInsert(SObject so)
    {
        
    }
    public void beforeUpdate(SObject oldSo, SObject so)
    {
        
    }
    public void beforeDelete(SObject so)
    {
        
    }
    public void afterDelete(SObject so)
    {
        
    }
    public void andFinally(){
         if(!caseList.isEmpty()){
        update caseList;
   	 }
       
   }
}