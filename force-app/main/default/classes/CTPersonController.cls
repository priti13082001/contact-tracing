public with sharing class CTPersonController {
    public CTPersonController() {
        
        public static String getToken (String mobileNo){
            Blob value=Blob.valueOf(mobileNo);
            Blob hash=Crypto.generateDigest('MD5',value);

            return EncodingUtil.base64Encode(hash);
        }

    }
}