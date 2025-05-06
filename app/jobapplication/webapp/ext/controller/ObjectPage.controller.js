sap.ui.define(['sap/ui/core/mvc/ControllerExtension'], function (ControllerExtension) {
	'use strict';

	return ControllerExtension.extend('jobapplication.ext.controller.ObjectPage', {
		// this section allows to extend lifecycle hooks or hooks provided by Fiori elements
		override: {
			/**
			 * Called when a controller is instantiated and its View controls (if available) are already created.
			 * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
			 * @memberOf jobapplication.ext.controller.ObjectPage
			 */
			onInit: function () {
				// you can access the Fiori elements extensionAPI via this.base.getExtensionAPI
				var oModel = this.base.getExtensionAPI().getModel();
				this.base.getAppComponent().getRouter().navTo("ApplicantsObjectPage", {
					key: "ID=100001,IsActiveEntity=true"
				});
			},
			onAfterRendering: function () {
				var oDialog = this.getView().byId("CreateDialog::Applicants");
				if (oDialog) {
					oDialog.close();
				}
			},
			onCreateSkill: function() {
				console.log("onCreateSkill");
			}
		}
	});
});
