using { sap.capire.application as my } from '../db/schema';
service JobApplication {

  // /** For displaying lists of Books */
  @readonly entity Applicants as projection on my.Applicants { * }


  // /** For display in details pages */
  // @readonly entity Books as projection on my.Books { *,
  //   author.name as author
  // } excluding { createdBy, modifiedBy };

  // @requires: 'authenticated-user'
  // action submitOrder (
  //   book    : Books:ID @mandatory,
  //   quantity: Integer  @mandatory
  // ) returns { stock: Integer };

  // event OrderedBook : { book: Books:ID; quantity: Integer; buyer: String };
}
