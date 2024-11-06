import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Gridviewbuilder() ,));
}
class Gridviewbuilder extends StatefulWidget {
  const Gridviewbuilder({super.key});

  @override
  State<Gridviewbuilder> createState() => _GridviewbuilderState();
}

class _GridviewbuilderState extends State<Gridviewbuilder> {
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
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0)),
                        elevation: 5,
                        child: Center(
                            child: Icon(
                              iconss[index],
                              size: 50,
                              color: Colors.amber,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            alignment:Alignment.bottomCenter,
                            child: Text(data[index])),
                      )
                    ],
                  ),
                )
            );
          },
          itemCount: iconss.length,
        ),
      ),
    );
  }
}
