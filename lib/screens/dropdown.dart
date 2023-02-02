// import 'package:flutter/material.dart';
//
// class Dropdowwn extends StatefulWidget {
//   const Dropdowwn({Key? key}) : super(key: key);
//
//   @override
//   State<Dropdowwn> createState() => _DropdowwnState();
// }
//
// class _DropdowwnState extends State<Dropdowwn> {
//   List name = ['aju', 'rameess', 'shabee'];
//   String? myname;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           Center(
//             child: DropdownButtonFormField(
//               hint: Text('sle'),
//               value: myname,
//               onChanged: (Newvalue) {
//                 setState(() {
//                   myname = Newvalue.toString();
//                 });
//               },
//               items: name
//                   .map((Newvalue) =>
//                       DropdownMenuItem(value: Newvalue, child: Text(Newvalue)))
//                   .toList(),
//             ),
//
//
//           ),
//           TextButton(onPressed: (){
//
//               print(myname);
//
//           }, child: Text('clil')),
//
//
//         ],
//       ),
//     );
//   }
// }
