### GPS Elevation widget for Garmin watches

Displays altitude based on GPS position if available, in both feet and meters.
Visible accuracy score based on devices GPS signal. Possible scores as follows:

1. Good - The Location was calculated with a good GPS fix. A 3-D GPS fix is available, with good-to-excellent HDOP (horizontal dilution of precision)

2. Fair - The Location was calculated with a usable GPS fix. A 3-D GPS fix is available, with marginal HDOP (horizontal dilution of precision)

3. Poor - The Location was calculated with a poor GPS fix. Only a 2-D GPS fix is available, likely due to a limited number of tracked satellites.

4. Last known - The Location is based on the last known GPS fix.

5. Unavailable - GPS is not available.

Originally developed for personal use on my Venu Sq due to its lack of a barometric altimeter and the lack of free GPS based altitude/elevation widgets.

Data updated every second.

#### Develop / Contribute

- Clone the repository
- Get the Eclipse IDE [here](https://www.eclipse.org/ide/ "here") 
- Follow these [guidelines](http:/https://developer.garmin.com/connect-iq/sdk// "here") to install the Garmin Connect IQ SDK
- Install supported devices (almost all)
- Build / run locally from within Eclipse

#### Get on Garmin

Download for your Garmin watch at https://apps.garmin.com/en-US/apps/172c46f6-fe86-4e74-89b2-2b69f6dc3c92 or on the Connect IQ app