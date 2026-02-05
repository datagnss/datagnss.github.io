# Glossary for GNSS

## Position Dilution of Precision (PDOP)

A unitless value that expresses the relationship between the error in user position and the error in satellite position. It indicates when the satellite geometry can provide the most accurate results. The best data collection time can be selected based on reports and graphs showing PDOP.

Geometrically, PDOP is proportional to 1 divided by the volume of the pyramid formed by lines running from the receiver to four satellites observed. It is the result of a calculation that takes into account each satellite’s location relative to the other satellites in the constellation. Good values are small, less than 3. Values greater than 7 are poor. Thus, small PDOP is associated with widely separated satellites. A low DOP indicates a higher probability of accuracy. A high DOP indicates a lower probability of accuracy. PDOP is related to horizontal and vertical DOP by PDOP2 = HDOP2 + VDOP2.

## Dilution of Precision (DOP)

An indicator of the quality of a GNSS position. It takes account of each satellite's location relative to the other satellites in the constellation, and their geometry in relation to the GNSS receiver. A low DOP value indicates a higher probability of accuracy. Standard DOP indicators for GNSS applications are:

- GDOP - Geometric (three position coordinates plus clock offset in the solution)
- PDOP - Position (three coordinates)
- HDOP - Horizontal (two horizontal coordinates)
- VDOP - Vertical (height only)
- TDOP - Time (clock offset only)
- RDOP - Relative (normalized to 60 seconds)

## ambiguity

The unknown integer number of cycles of the reconstructed carrier phase contained in an unbroken set of measurements.

The receiver counts the radio waves (from the satellite as it passes over the antenna) to a high degree of accuracy. However, the receiver has no information on the distance, in wavelengths, to the satellite at the time it started counting. This unknown number of wavelengths between the satellite and the antenna is the ambiguity.

Also known as integer ambiguity or integer bias.

## base station

An antenna and receiver set up on a known location specifically to collect data for differentially correcting from another receiver. The base station collects data that can be used to improve the accuracy of GNSS positions collected at unknown locations by a roving GNSS receiver.

Also called a reference station.

## CORS station

A station that is part of a network of Continuously Operating Reference Stations (CORS) that provide Global Navigation Satellite System (GNSS) data consisting of carrier phase and code range measurements in support of three dimensional positioning applications. 

## differential GPS (DGPS)

Single-frequency code phase data sent from a GNSS base station to a rover GNSS receiver to provide sub-meter position accuracy. The rover receiver can be at a long range (greater than 100 kms (62 miles)) from the base station. Most real-time differential correction methods apply corrections to code phase positions.

## carrier phase

GNSS measurements made on the L1 or L2/L5 carrier signal. May refer to the fractional part of the L1 or L2/L5 carrier wavelength, expressed in units of meters, cycles, fraction of a wavelength or angle. (One cycle of L1 is equivalent to one wavelength, and similarly for L2/L5.)

In carrier phase-based positioning, such as employed in GNSS surveying techniques, carrier phase may also refer to the accumulated or integrated measurement consisting of the fractional part plus the whole number of wavelengths (or cycles) since signal lock-on.

## Earth-Centered-Earth-Fixed (ECEF) Cartesian coordinates

Earth-Centered, Earth-Fixed coordinate system that is used to convert latitude, longitude and height values on a global datum to X,Y,Z Cartesian coordinates. The ECEF coordinate system is the basis for all GNSS coordinate computations.

## Real-Time Kinematic (RTK)

A method of GNSS surveying in real time, using short (stop-and-go) occupation, while maintaining lock on at least 4 satellites. This method requires a wireless data link between the base and rover receivers.

## RTCM(Radio Technical Commission for Maritime Services) 

RTCM is a standardized technical data format commonly used in the GNSS industry today for transmitting correction data that improves the accuracy of GNSS positioning across various applications.

The RTCM data format was developed by the Radio Technical Commission for Maritime Services, a non-profit international standards organization established in 1947 as a U.S. government advisory committee.

Over the decades, this independent organization has established protocols for communicating position and navigation information for boats and other maritime vessels, enhancing the accuracy and reliability of maritime navigation through real-time differential corrections to GNSS signals.

Today, other high-precision navigation applications, such as autonomous mobile robots, precision agriculture equipment, and unmanned aerial vehicles, use RTCM GNSS correction services to achieve real-time centimeter-level accuracy.

In simple terms, RTCM is a data format used in the GNSS industry to communicate GNSS correction data between service providers and users. RTCM data is typically transmitted via radio signals over the internet. Once the data reaches a GNSS receiver, corrections are applied, thereby increasing the receiver's position accuracy.

GNSS receivers determine their position by collecting signals from multiple GNSS satellites orbiting the Earth at approximately 20,000 km altitude. These signals, however, may contain errors due to atmospheric conditions, ionospheric disturbances, satellite clock inaccuracies, and other factors.

To correct these errors, a network of GNSS reference stations on Earth, with very accurately known fixed positions, collects the signals broadcast by the satellites. Using sophisticated algorithms to process all this information, RTCM correction data is then generated. High-precision GNSS receivers with Real Time Kinematic (RTK) capability can use this correction data to calculate a high-precision position by offsetting the errors in the GNSS satellite transmissions.  

To send this correction data to GNSS receivers, a service provider encodes it into standardized RTCM data formats, the most common of which are RTCM 2.x and RTCM 3.x. These RTCM formats include the necessary corrections based on the detected errors.

The difference between these two RTCM standards lies in the level of detail and capabilities they provide. The RTCM 3.x specification offers more advanced features, such as multi-frequency corrections and data from additional satellite systems.

RTCM protocols are standardized data formats used to structure the correction data messages sent to the mobile receiver in an RTK system. The reliability and accuracy of RTK positioning depend on the availability and efficiency of these corrections, making RTCM a critical component in ensuring the effectiveness of RTK-based applications.

