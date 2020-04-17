public class StringArrayTest {
     
     public static List<String>generateStringArray(Integer n)
     {
     List<String>myarray = new List<String> ();
     for(Integer i=0;i<n;i++)

     {
     myarray.add('Test '+i);
           System.debug(myArray[i]);

        }
        return myarray;
     }
     
     
     
     }