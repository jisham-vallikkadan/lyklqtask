import 'package:flutter/material.dart';

import '../model/vehicelmodel.dart';

class VehicleProvide with ChangeNotifier{

List<Vehicle>_bike=<Vehicle>[];
List<Vehicle> get  bike=>_bike;

List<Vehicle>_car=<Vehicle>[];
List<Vehicle> get  car=>_car;

void removercar(Vehicle vehicle)
{
  _car.remove(vehicle);
  notifyListeners();
}

void removerbike(Vehicle vehicle)
{
  _bike.remove(vehicle);
  notifyListeners();
}

void addbikeandcar(String type,number,brand,fuel){
 if(type=='Bike'){
   _bike.add(Vehicle(number: number, name: type, brandname: brand, fueltype: fuel));
 }
 else{
   _car.add(Vehicle(number: number, name: type, brandname: brand, fueltype: fuel));
 }
  notifyListeners();
}

}