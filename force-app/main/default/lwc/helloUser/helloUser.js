import { api, track, LightningElement } from 'lwc';
import Id from '@salesforce/user/Id';

export default class HelloUser extends LightningElement {
    @track userId = Id;
}