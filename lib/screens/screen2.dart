import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicel_master/model/vehicelmodel.dart';
import 'package:vehicel_master/service/provider.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TextEditingController numbercontroller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var velheltype = false;

  String? vehiceltype;
  List vehiceltypr = ['Bike', 'Car'];
  String? brandname;
  List carBrandname = [
    'BMW',
    'TOYOTA',
    'Bentley',
    'Benz',
    'Maruthi',
    'KIA',
    'TATA',
    'TVS',
    'HONDA',
    'Bajaj',
    'JAVA'
  ];
  // List bikeBrandname = ['TVS', 'HONDA', 'Bajaj', 'JAVA'];
  String? fueltype;
  List Fueltype = ['Petrol', 'Diesel'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text('Vehicelform'),
      ),
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Vehicel number',
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextFormField(
                          validator: (value) {
                            if (value == '') {
                              return 'Enter Vehicel number';
                            } else {
                              return null;
                            }
                          },
                          // onChanged: (String value) {
                          //   print(value);
                          //
                          //   if (value == "") {
                          //     setState(() {
                          //       velheltype == true;
                          //       print(velheltype);
                          //     });
                          //   }
                          // },
                          controller: numbercontroller,
                          decoration: InputDecoration(
                            hintText: 'KL10AZ1224',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                BorderSide(color: Colors.white, width: 3)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                BorderSide(color: Colors.white, width: 3)),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Vehicel Type',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: DropdownButtonFormField(
                        validator: (value) {
                          if (value == null) {
                            return "Select Vehicel type";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                              BorderSide(color: Colors.white, width: 3)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                              BorderSide(color: Colors.white, width: 3)),
                        ),
                        hint: Text(
                          'Select vehiceltype',style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        value: vehiceltype,
                        onChanged: (vale) {
                          setState(() {
                            vehiceltype = vale.toString();
                          });
                        },
                        items: vehiceltypr
                            .map((vale) =>
                            DropdownMenuItem(value: vale, child: Text(vale)))
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Brand name',
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: DropdownButtonFormField(
                        validator: (value) {
                          if (value == null) {
                            return 'Select Brand name';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                              BorderSide(color: Colors.white, width: 3)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                              BorderSide(color: Colors.white, width: 3)),
                        ),
                        hint: Text(
                          'select brand',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        value: brandname,
                        onChanged: (Newvalue) {
                          setState(() {
                            brandname = Newvalue.toString();
                          });
                        },
                        items: carBrandname.map((Newvalue) {
                          return DropdownMenuItem(
                              value: Newvalue, child: Text(Newvalue));
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Fuel type',
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: DropdownButtonFormField(
                        validator: (value) {
                          if (value == null) {
                            return 'Select fuel type';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                              BorderSide(color: Colors.white, width: 3)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                              BorderSide(color: Colors.white, width: 3)),
                        ),
                        onChanged: (value) {
                          setState(() {
                            fueltype = value.toString();
                          });
                        },
                        hint: Text('selecet fuel',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        value: fueltype,
                        items: Fueltype.map((fuel) =>
                            DropdownMenuItem(value: fuel, child: Text(fuel)))
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: TextButton(onPressed: (){
                        if (_formKey.currentState!.validate()) {
                          Provider.of<VehicleProvide>(context, listen: false)
                              .addbikeandcar(
                              vehiceltype.toString(),
                              numbercontroller.text,
                              brandname.toString(),
                              fueltype.toString());

                          Navigator.pop(context);
                        }
                      },child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 20),),),
                    ),

                  ],
                ),
              ),

            ),

          ],
        ),
      ),
    );
  }
}
