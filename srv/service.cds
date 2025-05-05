using { sap.capire.application as my } from '../db/schema';
service JobApplication {

 @odata.draft.enabled //Enable Draft
    entity Applicants as projection on my.Applicants;
    entity EducationalSteps as projection on my.EducationalSteps;
 entity CareerStages as projection on my.CareerStages;

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
