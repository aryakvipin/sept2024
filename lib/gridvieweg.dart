import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridvieweg(),));
}
class Gridvieweg extends StatelessWidget {
    var Iconsss=[Icons.import_contacts_sharp,
      Icons.add_card,
      Icons.add_alert,
      Icons.account_balance,Icons.insert_emoticon_sharp,Icons.import_contacts_sharp,
      Icons.add_card,

      Icons.account_balance,Icons.insert_emoticon_sharp];
    var colr=[Colors.yellow,Colors.green,Colors.red,Colors.pink,Colors.blue,Colors.yellow,Colors.green,Colors.red,Colors.pink];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview"),),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10),
          children: List.generate(Iconsss.length, (index)=>Card(color: colr[index],

            child: Center(child: Icon(Iconsss[index]),),
          ),)


          ),
    );
  }
}
