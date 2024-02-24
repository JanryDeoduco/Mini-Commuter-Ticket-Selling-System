/*
CLASSES
Vehicle
 - ID
 - destination
 - waiting time
 - fare
 - capacity
 >Bus
  <Inherits Vehicle>
  - waiting time: at most 30 mins
  - fare: 
    Taft: 20
    Magallanes: 30
    Ayala: 40
    Buendia: 50
    Guadalupe: 60
  - capacity: Given
 >Taxi
  <Inherits Vehicle>
  - waiting time: at most 5 mins
  - fare: 
    Taft: 70
    Magallanes: 80
    Ayala: 90
    Buendia: 100
    Guadalupe: 110
  - capacity: Given

Commuter
 - ID
 - fare
 - initialBudget
 >Regular
  <Inherits Commuter>
  fare: full fare

 >Senior Citizen
  <Inherits Commuter>
  fare: 20% off
*/


