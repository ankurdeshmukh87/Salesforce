import { LightningElement, wire } from 'lwc';
import { gql, graphql } from 'lightning/uiGraphQLApi';

export default class MyGQLQuery extends LightningElement {
    @wire(graphql, {
        query: gql`
          query AccountWithName {
            uiapi {
                query {
                    Account (first: 10) @category(name: "recordQuery") {
                        edges {
                            node {
                                Id
                                Name @category(name: "StringValue") { 
                                    value
                                }
                            }
                        }
                    }
                }
            }
        }`
    })
    graphqlQueryResult({ data, errors }) {
        if (data) {
            this.results = data.uiapi.query.Account.edges.map(edge => edge.node);
        }
        this.errors = errors;
    }
}