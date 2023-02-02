import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicel_master/screens/screen2.dart';
import 'package:vehicel_master/service/provider.dart';

import '../widgets/biketab.dart';
import '../widgets/caryab.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
// backgroundColor: Colors.indigo[300],
        appBar: AppBar(
          title: Center(child: Text('Vehicel Details')),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Bike',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Tab(
                  child: Text(
                    'car',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                BikeTake(),
                CarTab(),
              ]),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen2(),
                    ));
              },
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  height: 50,
                  margin: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Add Vehicles',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.add_circle_outline_outlined,
                        color: Colors.white,
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
