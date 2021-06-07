import Toybox.Graphics;
import Toybox.WatchUi;
using Toybox.Position;
using Toybox.System;
using Toybox.Timer;

class ElevationView extends WatchUi.View {

    hidden var myText;
    hidden var myText2;

    function initialize() {
        View.initialize();
        var dataTimer = new Timer.Timer();
		dataTimer.start(method(:timerCallback), 5000, true); // A one-second timer  
    }

    function onShow() {
        myText = new WatchUi.Text({
            :text=>"waiting for data ...",
            :color=>Graphics.COLOR_WHITE,
            :font=>Graphics.FONT_SMALL,
            :locX =>WatchUi.LAYOUT_HALIGN_CENTER,
            :locY=>WatchUi.LAYOUT_VALIGN_CENTER
        });
        
        myText2 = new WatchUi.Text({
            :text=>"tets ...",
            :color=>Graphics.COLOR_WHITE,
            :font=>Graphics.FONT_SMALL,
            :locX =>WatchUi.LAYOUT_HALIGN_CENTER,
            :locY=>WatchUi.LAYOUT_VALIGN_CENTER
        });
    }

    function onUpdate(dc) {
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
        dc.clear();
        myText.draw(dc);
    }
    
    function timerCallback() {
	    var positionInfo = Position.getInfo();
	    if (positionInfo has :altitude && positionInfo.altitude != null) {	    	
	        var altitude = positionInfo.altitude;	        
	        var altFeet = altitude*3.28084;
	        var altFeetNum = altFeet.toNumber();
	        myText.setText("Altitude:\n" + altFeetNum.toString() + "ft");
	        WatchUi.requestUpdate();
	    }
	}
    
    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}
