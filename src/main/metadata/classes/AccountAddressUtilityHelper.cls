
public class AccountAddressUtilityHelper 
{

    public AccountAddressUtilityHelper() {
        String unescapedstring = ApexPage.getCurrentPage().getParameters.get('url_param');
        String usedLater = unescapedstring;
    }
	
    public void tryBadPracticesQueryInLoop() {
        for (Integer i = 0; i < 10; i++) {
            List<Account> accounts = [SELECT Id FROM Account LIMIT 1];
            if(a.RecordTypeId == '012500000009WAr'){
                //do some logic here.....
            }
            Database.insert(accounts);
			
			if (!accounts.isEmpty() && accounts != null)
			{
				//Sysem.debug('A');
			}
        }
    }
	
    public void tryBadPracticesDMLInForLoop()  {
        try {
            for (Integer i = 0; i < 10; i++) {
                if(true) {
                    if(true) {
                        if(true) {
                            if(true){
                                Account account;
                                insert account;
                            }
                        }

                    }

                }
            }
        } catch (Exception ex) {

        }
    }
	
}