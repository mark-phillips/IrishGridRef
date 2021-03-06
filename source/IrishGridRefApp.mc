using Toybox.Application as App;
using Toybox.System;

class IrishGridRefApp extends App.AppBase {

    var view = null;


    function initialize() {
        AppBase.initialize();
    }

    function onSettingsChanged() {
      if (view != null) {
        view.updateSettings = true;
      }
    }
    //! onStart() is called on application start up

    function onStart(state) {

    }

    //! onStop() is called when your application is exiting
    function onStop(state) {
    }

    //! Return the initial view of your application here
    function getInitialView() {
        view = new GridRefView("OSIGridRef",2) ;
        return [ view ];
    }
}
