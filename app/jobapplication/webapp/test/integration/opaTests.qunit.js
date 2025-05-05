sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'jobapplication/test/integration/FirstJourney',
		'jobapplication/test/integration/pages/ApplicantsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ApplicantsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('jobapplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheApplicantsObjectPage: ApplicantsObjectPage
                }
            },
            opaJourney.run
        );
    }
);