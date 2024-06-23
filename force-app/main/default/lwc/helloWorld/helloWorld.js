import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    
    myVar = 1;

    connectedCallback() {
        console.log(this.myVar);
    }

    // myMethod() {
    //     if(this.myVar == 'Hello World') {
    //         this.myVar = 'Hello Infosys';
    //     } else {
    //         this.myVar = 'Hello World';
    //     }
        
    //     console.log(this.myVar);
    // }

    myMethod() {
        this.myVar++;
    }
}