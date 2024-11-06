import 'package:flutter/material.dart';
// void main(){runApp(MaterialApp(home:Gridviewcutm() ,));}
class Gridviewcutm extends StatelessWidget {
   Gridviewcutm({super.key});
  var color=[Colors.red,Colors.yellow,Colors.greenAccent,Colors.blue,Colors.purple,Colors.pink,
  ];
  var iconss=
  [Icons.account_balance,
    Icons.add_alert,
    Icons.access_alarms_rounded,
    Icons.add_circle,
    Icons.ac_unit,
    Icons.insert_comment_rounded];
  var data=[
    "account_balance",
    "add_alert",
    "access_alarms_rounded",
    "add_circle",
    "ac_unit",
    "insert_comment_rounded"



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview custom"),),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate((context,index){

             return Card(color: color[index],
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(iconss[index]),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text(data[index]),
                       Text(data[index]),

                     ],
                   )
                 ],
               ),
             );





          },childCount: data.length)),
    );
  }
}
