using JobApplication as service from '../../srv/service';
using from '../../db/schema';

annotate service.Applicants with @(
    UI.FieldGroup #GeneratedGroup         : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'ID',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'firstName',
                Value: firstName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'surName',
                Value: surName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'dateOfBirth',
                Value: dateOfBirth,
            },
            {
                $Type: 'UI.DataField',
                Label: 'nationality',
                Value: nationality,
            },
            {
                $Type: 'UI.DataField',
                Label: 'email',
                Value: email,
            },
            {
                $Type: 'UI.DataField',
                Label: 'phone',
                Value: phone,
            },
            {
                $Type: 'UI.DataField',
                Label: 'street',
                Value: street,
            },
            {
                $Type: 'UI.DataField',
                Label: 'postalCode',
                Value: postalCode,
            },
            {
                $Type: 'UI.DataField',
                Label: 'city',
                Value: city,
            },
            {
                $Type: 'UI.DataField',
                Label: 'country',
                Value: country,
            },
            {
                $Type: 'UI.DataField',
                Label: 'profilPicture',
                Value: profilPicture,
            },
        ],
    },
    UI.Facets                             : [
        {
            $Type : 'UI.CollectionFacet',
            ID    : 'CareerFacet',
            Label : '{i18n>CareerStages}',
            Facets: [{
                $Type : 'UI.ReferenceFacet',
                ID    : 'CareerStagesTable',
                Label : '',
                Target: 'career/@UI.SelectionPresentationVariant#i18nCareerStages'
            }]
        },
        {
            $Type : 'UI.CollectionFacet',
            ID    : 'EducationFacet',
            Label : '{i18n>educationalSteps}',
            Facets: [{
                $Type : 'UI.ReferenceFacet',
                ID    : 'EducationalStepsTable',
                Label : '',
                Target: 'education/@UI.SelectionPresentationVariant#i18nEducationalSteps'
            }]
        },
        {
            $Type : 'UI.CollectionFacet',
            ID    : 'HobbierFacet',
            Label : '{i18n>hobbies}',
            Facets: [{
                $Type : 'UI.ReferenceFacet',
                ID    : 'HobbiesTable',
                Label : '',
                Target: 'hobbies/@UI.LineItem#i18nHobbies'
            }]
        }
    ],
    UI.HeaderFacets                       : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>personalInformation}',
            ID    : 'i18nPersonalInformation',
            Target: '@UI.FieldGroup#i18nPersonalInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>address}',
            ID    : 'i18nAddress',
            Target: '@UI.FieldGroup#i18nAddress',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>contactData}',
            ID    : 'i18nContactData',
            Target: '@UI.FieldGroup#ContactData',
        },
    ],
    UI.FieldGroup #i18nPersonalInformation: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: firstName,
                Label: '{i18n>Firstname}',
            },
            {
                $Type: 'UI.DataField',
                Value: surName,
                Label: '{i18n>Surname}',
            },
            {
                $Type: 'UI.DataField',
                Value: dateOfBirth,
                Label: '{i18n>Dateofbirth}',
            },
            {
                $Type: 'UI.DataField',
                Value: nationality,
                Label: '{i18n>Nationality}',
            },
        ],
    },
    UI.FieldGroup #i18nAddress            : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: street,
                Label: '{i18n>Street}',
            },
            {
                $Type: 'UI.DataField',
                Value: postalCode,
                Label: '{i18n>Postalcode}',
            },
            {
                $Type: 'UI.DataField',
                Value: city,
                Label: '{i18n>City}',
            },
            {
                $Type: 'UI.DataField',
                Value: country,
                Label: '{i18n>Country}',
            },
        ],
    },
    UI.FieldGroup #ContactData            : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: email,
                Label: '{i18n>Email}',
            },
            {
                $Type: 'UI.DataField',
                Value: phone,
                Label: '{i18n>Phone}',
            },
            {
                $Type: 'UI.DataFieldWithUrl',
                Value: linkedIn,
                Label: '{i18n>Linkedin}',
                Url  : 'https://www.linkedin.com/in/lukas-schoe/'
            },
             {
                $Type: 'UI.DataFieldWithUrl',
                Value: git,
                Label: '{i18n>GitHub}',
                Url  : 'https://www.linkedin.com/in/lukas-schoe/'
            },
        ],
    },
    UI.HeaderInfo                         : {
        Title         : {
            $Type: 'UI.DataField',
            Value: fullName,
        },
        TypeName      : '',
        TypeNamePlural: '',
        ImageUrl      : profilPicture,
    },
    UI.FieldGroup #i18nSkills             : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: skills.german,
                Label: 'german',
            },
            {
                $Type: 'UI.DataField',
                Value: skills.english,
                Label: 'english',
            },
            {
                $Type: 'UI.DataField',
                Value: skills.abap,
                Label: 'abap',
            },
            {
                $Type: 'UI.DataField',
                Value: skills.cap,
                Label: 'cap',
            },
            {
                $Type: 'UI.DataField',
                Value: skills.javaSkript,
                Label: 'javaSkript',
            },
            {
                $Type: 'UI.DataField',
                Value: skills.office,
                Label: 'office',
            },
            {
                $Type: 'UI.DataField',
                Value: skills.python,
                Label: 'python',
            },
        ],
    },
    UI.Identification                     : [],
    UI.DeleteHidden                       : true,
);

annotate service.EducationalSteps with @(
    UI.LineItem #i18nEducationalSteps                    : [
        {
            $Type: 'UI.DataField',
            Value: startDate,
            Label: '{i18n>Startdate}',
        },
        {
            $Type: 'UI.DataField',
            Value: endDate,
            Label: '{i18n>Enddate}',
        },
        {
            $Type: 'UI.DataField',
            Value: person.education.title,
            Label: '{i18n>Titel}',
        },
        {
            $Type: 'UI.DataField',
            Value: institution,
            Label: '{i18n>Institution}',
        },
        {
            $Type: 'UI.DataField',
            Value: description,
            Label: '{i18n>Description}',
        },
    ],
    UI.SelectionPresentationVariant #i18nEducationalSteps: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#i18nEducationalSteps',
            ],
            SortOrder     : [{
                $Type     : 'Common.SortOrderType',
                Property  : startDate,
                Descending: true,
            }, ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
    },
);

annotate service.Hobbies with @(UI.LineItem #i18nHobbies: [
    {
        $Type: 'UI.DataField',
        Value: title,
        Label: '{i18n>Title}',
    },
    {
        $Type: 'UI.DataField',
        Value: description,
        Label: '{i18n>Description}',
    },
]);

annotate service.CareerStages with @(
    UI.LineItem #i18nCareerStages                    : [
        {
            $Type: 'UI.DataField',
            Value: startDate,
            Label: '{i18n>Startdate}',
        },
        {
            $Type: 'UI.DataField',
            Value: endDate,
            Label: '{i18n>Enddate}',
        },
        {
            $Type: 'UI.DataField',
            Value: title,
            Label: '{i18n>Title}',
        },
        {
            $Type: 'UI.DataField',
            Value: company,
            Label: '{i18n>Company}',
        },
        {
            $Type: 'UI.DataField',
            Value: person.career.place,
            Label: '{i18n>Place}',
        },
        {
            $Type: 'UI.DataField',
            Value: description,
            Label: '{i18n>Description}',
        },
    ],
    UI.SelectionPresentationVariant #i18nCareerStages: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#i18nCareerStages',
            ],
            SortOrder     : [{
                $Type     : 'Common.SortOrderType',
                Property  : startDate,
                Descending: true,
            }, ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
    },
);


annotate service.Applicants with {
    email    @Communication.IsEmailAddress;
    phone    @Communication.IsPhoneNumber;
    linkedIn @Core.IsURL
};


annotate service.Skills @(

    UI.DataPoint #Rating: {
        Value        : cap,
        TargetValue  : 4,
        Visualization: #Rating
    },

    UI.LineItem         : [{
        $Type : 'UI.DataFieldForAnnotation',
        Label : 'Rating',
        Target: '@UI.DataPoint#Rating'
    }, ],
);