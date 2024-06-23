@RestResource(urlMapping='/Account/*')
global with sharing class  CustomerRestResource {
    @HttpGet
    global static Account getCustomerInfo() {
        return
            [SELECT Name FROM Account];
    }  
}