# handwash-dispenser-covid19-pic16f877a
A touchless handwash dispenser with an LCD display integrated can help users follow the right COVID-19 prevention techniques.


In the COVID-19 pandemic, many technical innovations and ideas showed up to help reducing the effects of getting infected, or spreading the virus. This project helps users follow the instructions of the international health institutes and organizations, regarding the sanitization process and reducing the surfaces that are frequently being touched and can be a source of infection. A touchless handwash dispenser with an LCD display integrated can help users follow the right COVID-19 prevention techniques.

Since the project was applied over a simulator, the following schematic includes a test pin in the Infra-Red sensor that acts as the moving hand, where a switch is added to control the flow during the simulation. 
We can observe how we interact with the Infra-Red Sensor’s input through PortB, Pin RB0. Where in the software behind this connection, no instructions appear on the LCD unless RB0 reads a 1 from the Infra-Red sensor, else, a welcome message will keep showing on the screen.

The DC Motor is directly connected to the Infra-Red sensor Out pin, as in each time the Infra-Red sensor detects an object, the DC motor moves simultaneously with the LCD, and stops when the object is gone, which is in our case the users’ hands.

