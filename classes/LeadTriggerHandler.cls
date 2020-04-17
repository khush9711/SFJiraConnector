public class LeadTriggerHandler
{

public static void FindDupes(List<Lead> newLead)
{
for(Lead myLead :newLead)
{
if(myLead.Email != null)
  {
List<Contact> dupes = [SELECT Name, Title, Phone, Id FROM Contact WHERE Email = : myLead.Email];
 if (dupes.size() > 0)

  {
myLead.addError('Contact with this Email already exits with ID:' +dupes[0].Id);
      }                             
   
    }
}
}
}