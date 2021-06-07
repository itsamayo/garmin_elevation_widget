import Toybox.Graphics;
import Toybox.WatchUi;
using Toybox.Position;
using Toybox.System;
using Toybox.Timer;
using Toybox.Time;
using Toybox.Time.Gregorian;

class ElevationView extends WatchUi.View {

    hidden var myText;

    function initialize() {
        View.initialize();
        var dataTimer = new Timer.Timer();
		dataTimer.start(method(:timerCallback), 10000, true);
    }

    function onShow() {
        myText = new WatchUi.Text({
            :text=>"waiting for GPS data",
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
	        var altMetreNum = altitude.toNumber();
	        var today = Gregorian.info(Time.now(), Time.FORMAT_MEDIUM);
			var dateString = Lang.format(
			    "$1$:$2$:$3$ $4$ $5$ $6$",
			    [
			        today.hour,
			        today.min,
			        today.sec,
			        today.day_of_week,
			        today.day,
			        today.month
			    ]
			);
	        myText.setText("GPS altitude:\n" + altFeetNum.toString() + "ft" + "\n" + altMetreNum.toString() + "m" + "\n\n" + dateString);
	        WatchUi.requestUpdate();
	    }
	}
    
    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}
