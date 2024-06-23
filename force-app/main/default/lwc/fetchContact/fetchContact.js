import { LightningElement, track, wire } from 'lwc';
import getContacts from '@salesforce/apex/fetchContactController.getContacts';
import getAccountIdByUserId from '@salesforce/apex/fetchContactController.getAccountIdByUserId';

export default class FetchContact extends LightningElement {
    @track myCons;
    myError;
    empInfoUrl;
    //accId = '0015j00000XvRAHAA3';
    @wire(getContacts) myCons; //data, error
    @wire(getAccountIdByUserId) accId;
    // getCon() {
    //     console.log('about to fetch...');
    //     getContacts().then(result => {
    //         console.log('result = ' + result);
    //         this.myCons = result;
    //         this.accessKey,this.myError = undefined;
    //     }).catch(error => {
    //         this.myError = error;
    //         this.myCons = undefined;
    //     } );
    // }
        
    connectedCallback() {
        //console.log(this.accId);
        //this.empInfoUrl = 'https://www.india.com' + this.accId.data;
    }
}