using {managed} from '@sap/cds/common';

namespace sap.capire.application;

entity Applicants : managed {
  key ID            : Integer;
      firstName     : String(40);
      surName       : String(40);
      dateOfBirth   : Date;
      nationality   : String(40);
      email         : String(255);
      phone         : String(30);
      street        : String(100);
      postalCode    : String(20);
      city          : String(100);
      country       : String(2);
      profilPicture : LargeBinary @Core.MediaType: 'image/png';
      education     : Composition of many EducationalSteps
                        on education.person = $self;
      skills        : Composition of many Skills
                        on skills.person = $self;
      hobbies       : Composition of many Hobbies
                        on hobbies.person = $self;
}

entity EducationalSteps : managed {
  key ID          : UUID;
      person      : Association to Applicants;
      title       : String(100);
      institution : String(100);
      place       : String(100);
      startDate   : Date;
      endDate     : Date;
      degree      : String(50);
      description : String(200);

}

entity Skills : managed {
  key ID          : UUID;
      person      : Association to Applicants;
      title       : String(100);
      institution : String(100);
      place       : String(100);
      description : String(200);
}

entity Hobbies : managed {
  key ID          : UUID;
      person      : Association to Applicants;
      title       : String(100);
      description : String(200);
}
