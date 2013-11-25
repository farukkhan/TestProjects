/// <reference name="MicrosoftAjax.js"/>

Type.registerNamespace("TestInterfaceOfVariousFeatures");

TestInterfaceOfVariousFeatures.ClientBehavior1 = function() {
    
}

TestInterfaceOfVariousFeatures.ClientBehavior1.prototype = {
    initialize: function() {
        // Add custom initialization here
    },

    helloworld: function() {
        return "Hello World!!!";
    },

    dispose: function() {
        //Add custom dispose actions here
        TestInterfaceOfVariousFeatures.ClientBehavior1.callBaseMethod(this, 'dispose');
    }
}
TestInterfaceOfVariousFeatures.ClientBehavior1.registerClass('TestInterfaceOfVariousFeatures.ClientBehavior1', Sys.UI.Behavior);

if (typeof(Sys) !== 'undefined') Sys.Application.notifyScriptLoaded();
