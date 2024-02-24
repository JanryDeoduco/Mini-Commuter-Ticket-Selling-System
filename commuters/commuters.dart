import '../vehicles/vehicles.dart';

abstract class Commuter{
  late String _ID;
  late double  _initialBudget;
  late String _travelLog;
  //ticket prices for bus
  double taft = 20;
  double magallanes = 30;
  double ayala = 40;
  double buendia = 50;
  double guadalupe = 60;

  //ticket prices for taxi
  double taxtaft = 70;
  double taxmagallanes = 80;
  double taxayala = 90;
  double taxbuendia = 100;
  double taxguadalupe = 110;


  //number of commuters
  static int numberOfCommuters = 0;

  Commuter(this._initialBudget){
    this._travelLog = "";
    numberOfCommuters++;
  }
  //method for riding a vehicle
  void ride(String loc, Vehicle vehicle){
    //condition for vehicle capacity
    if (vehicle.currentCapacity+1 > vehicle.capacity){
      print("Sorry, the vehicle ${vehicle.ID} is already full");
      return;
    }

    
    


    //pays a full fare
    if (loc == "Taft"){
      if (vehicle is Bus){ //if the vehicle is a bus
        //reduce the value of budget
        this._initialBudget -= taft;
        
        //if the budget is not enough
        if (this._initialBudget < 0){
          this._initialBudget += taft; //refund
          print("Passenger ${this._ID} does not have enough fare to ride ${vehicle.ID}");
          return;
        }
        //successfully bought a ticket
        print("Passenger ${this._ID} successfully boarded ${vehicle.ID} with a fare of P${this.taft}");
      }

      else{ //if the vehicle is a taxi
        //reduce the value of budget
        this._initialBudget -= taxtaft;
        
        //if the budget is not enough
        if (this._initialBudget < 0){
          this._initialBudget += taxtaft; //refund
          print("Passenger ${this._ID} does not have enough fare to ride ${vehicle.ID}");
          return;
        }
        //successfully bought a ticket
        print("Passenger ${this._ID} successfully boarded ${vehicle.ID} with a fare of P${this.taxtaft}");
      }

      

      
    }

    else if (loc == "Magallanes"){
      if (vehicle is Bus){ //if the vehicle is a bus
        //reduce the value of budget
        this._initialBudget -= magallanes;
        
        //if the budget is not enough
        if (this._initialBudget < 0){
          this._initialBudget += magallanes; //refund
          print("Passenger ${this._ID} does not have enough fare to ride ${vehicle.ID}");
          return;
        }

        //successfully bought a ticket
        print("Passenger ${this._ID} successfully boarded ${vehicle.ID} with a fare of P${this.magallanes}");
      }

      else{ //if the vehicle is a taxi
        //reduce the value of budget
        this._initialBudget -= taxmagallanes;
        
        //if the budget is not enough
        if (this._initialBudget < 0){
          this._initialBudget += taxmagallanes; //refund
          print("Passenger ${this._ID} does not have enough fare to ride ${vehicle.ID}");
          return;
        }

        //successfully bought a ticket
        print("Passenger ${this._ID} successfully boarded ${vehicle.ID} with a fare of P${this.taxmagallanes}");
      }

      

    }

    else if (loc == "Ayala"){
      if (vehicle is Bus){ //if the vehicle is a bus
        //reduce the value of budget
        this._initialBudget -= ayala;
        
        //if the budget is not enough
        if (this._initialBudget < 0){
          this._initialBudget += ayala; //refund
          print("Passenger ${this._ID} does not have enough fare to ride ${vehicle.ID}");
          return;
        }

        //successfully bought a ticket
        print("Passenger ${this._ID} successfully boarded ${vehicle.ID} with a fare of P${this.ayala}");
      }

      else{ //if the vehicle is a taxi
        //reduce the value of budget
        this._initialBudget -= taxayala;
        
        //if the budget is not enough
        if (this._initialBudget < 0){
          this._initialBudget += taxayala; //refund
          print("Passenger ${this._ID} does not have enough fare to ride ${vehicle.ID}");
          return;
        }

        //successfully bought a ticket
        print("Passenger ${this._ID} successfully boarded ${vehicle.ID} with a fare of P${this.taxayala}");
      }

      
    }

    else if (loc == "Buendia"){
      if (vehicle is Bus){ //if the vehicle is a bus
        //reduce the value of budget
        this._initialBudget -= buendia;
        
        //if the budget is not enough
        if (this._initialBudget < 0){
          this._initialBudget += buendia; //refund
          print("Passenger ${this._ID} does not have enough fare to ride ${vehicle.ID}");
          return;
        }
        //successfully bought a ticket
        print("Passenger ${this._ID} successfully boarded ${vehicle.ID} with a fare of P${this.buendia}");
      }

      else{ //if the vehicle is a taxi
        //reduce the value of budget
        this._initialBudget -= taxbuendia;
        
        //if the budget is not enough
        if (this._initialBudget < 0){
          this._initialBudget += taxbuendia; //refund
          print("Passenger ${this._ID} does not have enough fare to ride ${vehicle.ID}");
          return;
        }
        //successfully bought a ticket
        print("Passenger ${this._ID} successfully boarded ${vehicle.ID} with a fare of P${this.taxbuendia}");
      }

      
    }

    else if (loc == "Guadalupe"){
      if (vehicle is Bus){ //if the vehicle is a bus
        //reduce the value of budget
        this._initialBudget -= guadalupe;
        
        //if the budget is not enough
        if (this._initialBudget < 0){
          this._initialBudget += guadalupe; //refund
          print("Passenger ${this._ID} does not have enough fare to ride ${vehicle.ID}");
          return;
        }

        //successfully bought a ticket
        print("Passenger ${this._ID} successfully boarded ${vehicle.ID} with a fare of P${this.guadalupe}");
      }

      else if (vehicle is Taxi){ //if the vehicle is a taxi
        //reduce the value of budget
        this._initialBudget -= taxguadalupe;
        //if the budget is not enough
        if (this._initialBudget < 0){
          this._initialBudget += taxguadalupe; //refund
          print("Passenger ${this._ID} does not have enough fare to ride ${vehicle.ID}");
          return;
        }

        //successfully bought a ticket
        print("Passenger ${this._ID} successfully boarded ${vehicle.ID} with a fare of P${this.taxguadalupe}");
      }

      
    }
    //adds a passenger to a passenger list
    vehicle.passengers.add(this);

    //adds the capacity
    vehicle.currentCapacity++;

    //adds to travel log
    if (_travelLog == ""){
      this._travelLog = this._travelLog + "${vehicle.ID} - ${loc}";
    }

    else{
      this._travelLog = this._travelLog + ", ${vehicle.ID} - ${loc}";
      
    }
    
  }

  
  

  //getter
  double get initialBudget => this._initialBudget;
  String get travelLog => this._travelLog;
  String get ID => this._ID;

}

class Regular extends Commuter{
  static int _regularCounter = 0;
  static int numOfRegulars = 0;


  Regular(double _initialBudget) : super(_initialBudget){
    this._ID = "REG${_regularCounter++}";
    numOfRegulars++;
  } //instantiate regular commuter
  
 
}


class SeniorPwd extends Commuter{
  static int _seniorPWDCounter = 0;
  static int numOfSeniorPwds = 0;

  SeniorPwd(double _initialBudget) : super(_initialBudget){
    this._ID = "SENPWD${_seniorPWDCounter++}";
    
    //discounted prices
    this.taft -= (this.taft*0.20); //for bus
    this.magallanes -= (this.magallanes*0.20);
    this.ayala -= (this.ayala*0.20);
    this.buendia -= (this.buendia*0.20);
    this.guadalupe -= (this.guadalupe*0.20);

    this.taxtaft -= (this.taxtaft*0.20); //for taxi
    this.taxmagallanes -= (this.taxmagallanes*0.20);
    this.taxayala -= (this.taxayala*0.20);
    this.taxbuendia -= (this.taxbuendia*0.20);
    this.taxguadalupe -= (this.taxguadalupe*0.20);
    numOfSeniorPwds++;
  } //instantiate senior/PWD commuter

 
}

