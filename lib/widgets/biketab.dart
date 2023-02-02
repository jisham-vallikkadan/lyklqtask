import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicel_master/service/provider.dart';

class BikeTake extends StatefulWidget {
  const BikeTake({Key? key}) : super(key: key);

  @override
  State<BikeTake> createState() => _BikeTakeState();
}

class _BikeTakeState extends State<BikeTake> {
  @override
  Widget build(BuildContext context) {
    var Bike = context.watch<VehicleProvide>().bike;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: ListView.builder(
            itemCount: Bike.length,
            itemBuilder: (context, index) {
              var data = Bike[index];
              return Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.black, width: 2)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 8,top: 8,bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         '${data.name}',
                         style:
                         TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                       ),
                       GestureDetector(
                         onTap: () {
                           Provider.of<VehicleProvide>(context, listen: false)
                               .removerbike(data);
                         },
                         child: Icon(
                           Icons.close,
                           color: Colors.red,
                         ),
                       ),

                     ],
                   ),
                      Text(
                        '${data.number}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '${data.brandname}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '${data.fueltype}',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
