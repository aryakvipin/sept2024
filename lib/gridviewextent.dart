import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: Gridviewextend(),));
}
class Gridviewextend extends StatelessWidget {
   Gridviewextend({super.key});
  var Iconsss=[Icons.import_contacts_sharp,
    Icons.add_card,
    Icons.add_alert,
    Icons.account_balance,
    Icons.camera_alt,
    FontAwesomeIcons.amazon,
    FontAwesomeIcons.cableCar,

  ];
  var name=["contacts_sharp","add_card","add_alert","account_balance","camera_alt","amazon","cableCar"];
  var colr=[Colors.yellow,Colors.green,Colors.red,Colors.pink,
    Colors.blue,Colors.yellow,Colors.green,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("data"),),
      body: GridView.extent(maxCrossAxisExtent: 200,
        children: List.generate(Iconsss.length, (index)=>
            Card(
              elevation: 10,
              shadowColor: Colors.pink,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
              color: colr[index],
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Iconsss[index]),
                  Text(name[index])
                ],
              ),
            )
        ),),
    );
  }
}
