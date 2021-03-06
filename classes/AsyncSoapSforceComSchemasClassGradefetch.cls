//Generated by wsdl2apex

public class AsyncSoapSforceComSchemasClassGradefetch {
    public class getGradesResponse_elementFuture extends System.WebServiceCalloutFuture {
        public String getValue() {
            soapSforceComSchemasClassGradefetch.getGradesResponse_element response = (soapSforceComSchemasClassGradefetch.getGradesResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class AsyncGradeFetcher {
        public String endpoint_x = 'https://ap5.salesforce.com/services/Soap/class/GradeFetcher';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        public soapSforceComSchemasClassGradefetch.SessionHeader_element SessionHeader;
        public soapSforceComSchemasClassGradefetch.CallOptions_element CallOptions;
        public soapSforceComSchemasClassGradefetch.DebuggingHeader_element DebuggingHeader;
        public soapSforceComSchemasClassGradefetch.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        public soapSforceComSchemasClassGradefetch.DebuggingInfo_element DebuggingInfo;
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/schemas/class/GradeFetcher';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/schemas/class/GradeFetcher';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/schemas/class/GradeFetcher';
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/schemas/class/GradeFetcher';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/schemas/class/GradeFetcher';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/schemas/class/GradeFetcher', 'soapSforceComSchemasClassGradefetch'};
        public AsyncSoapSforceComSchemasClassGradefetch.getGradesResponse_elementFuture beginGetGrades(System.Continuation continuation,Integer Marks) {
            soapSforceComSchemasClassGradefetch.getGrades_element request_x = new soapSforceComSchemasClassGradefetch.getGrades_element();
            request_x.Marks = Marks;
            return (AsyncSoapSforceComSchemasClassGradefetch.getGradesResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncSoapSforceComSchemasClassGradefetch.getGradesResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/GradeFetcher',
              'getGrades',
              'http://soap.sforce.com/schemas/class/GradeFetcher',
              'getGradesResponse',
              'soapSforceComSchemasClassGradefetch.getGradesResponse_element'}
            );
        }
    }
}