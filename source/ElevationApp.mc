import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;
using Toybox.Position;
using Toybox.System;
using Toybox.Timer;

class ElevationApp extends Application.AppBase {
	
    function initialize() {
        AppBase.initialize();         
//        var dataTimer = new Timer.Timer();
//		dataTimer.start(method(:timerCallback), 5000, true); // A one-second timer  
           
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {    	
   		
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    // Return the initial view of your application here
    function getInitialView() as Array<Views or InputDelegates>? {
    	
        return [ new ElevationView() ] as Array<Views or InputDelegates>;
    }
    
//    function timerCallback() {
//	    var positionInfo = Position.getInfo();
//	    if (positionInfo has :altitude && positionInfo.altitude != null) {	    	
//	        var altitude = positionInfo.altitude;
//	        System.println("Altitude: " + altitude);
//	    }
//	}

}

function getApp() as ElevationApp {
    return Application.getApp() as ElevationApp;
}