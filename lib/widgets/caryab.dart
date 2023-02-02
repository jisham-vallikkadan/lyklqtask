import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../service/provider.dart';

class CarTab extends StatefulWidget {
  const CarTab({Key? key}) : super(key: key);

  @override
  State<CarTab> createState() => _CarTabState();
}

class _CarTabState extends State<CarTab> {
  @override
  Widget build(BuildContext context) {
    var Car=context.watch<VehicleProvide>().car;
    return  Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,),
          child: ListView.builder(
            itemCount: Car.length,
            itemBuilder: (context, index) {
              var cardata=Car[index];
              return Card(
                elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black,width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 8,top: 8,bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [

                         Text(
                           '${cardata.name}',
                           style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                         ),
                         GestureDetector(
                           onTap: (){
                             Provider.of<VehicleProvide>(context,listen: false).removercar(cardata);
                           },
                           child: Icon(
                             Icons.close,
                             color: Colors.red,
                           ),
                         ),
                       ],
                     ),
                        Text(
                          '${cardata.number}',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '${cardata.brandname}',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '${cardata.fueltype}',
                          style: TextStyle(fontSize: 20),
                        ),

                      ],
                    ),
                  ));
            },
          ),
        ),

      ],
    );
  }
}
