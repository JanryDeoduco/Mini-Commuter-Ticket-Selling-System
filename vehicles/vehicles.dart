import '../commuters/commuters.dart';

abstract class Vehicle {
  late String ID;
  late int waitingTime;
  late int capacity;
  late int currentCapacity = 0;
  late List<Commuter> passengers = []; //list of passengers
  static int numberOfVehicles = 0;
  
  


  Vehicle(this.capacity){
    numberOfVehicles++;
    
  } //instantiate a vehicle

  //printing the passengers
  void printPassengers(){
    print("[${this.ID}] - Max Capacity: ${this.capacity}");
    
    //printing the list of passengers
    for (Commuter passenger in passengers){
      print("[${passenger.ID}] Wallet balance: ${passenger.initialBudget} | Travel Log: [${passenger.travelLog}]");
    }
  }
}


class Bus extends Vehicle{
  //creates a counter for ID
  static late int numOfBuses = 0;
  //instantiate a bus
  Bus(int capacity) : super(capacity){ 
    this.waitingTime = 30;
    this.ID = "BUS${numOfBuses}";
    numOfBuses++;

  }

  void printFareMatrix(){
    print("***** BUS Fare Matrix *****");
    print("     Taft: P20.0");
    print("     Magallanes: P30.0");
    print("     Ayala: P40.0");
    print("     Buendia: P50.0");
    print("     Guadalupe: P60.0");
    print("***************************");
  }

}

class Taxi extends Vehicle{
  //creates a counter for ID
  static int numOfTaxis = 0;

  //instantiate a taxi
  Taxi(int capacity) : super(capacity){
    this.waitingTime = 5;
    this.ID = "TAXI${numOfTaxis}";
    numOfTaxis++;
  }

  void printFareMatrix(){
    print("***** TAXI Fare Matrix *****");
    print("     Taft: P70.0");
    print("     Magallanes: P80.0");
    print("     Ayala: P90.0");
    print("     Buendia: P100.0");
    print("     Guadalupe: P110.0");
    print("***************************");
  }

}
