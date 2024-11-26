import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: expandedtile()));
}

class expandedtile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
              child: ExpansionTile(
            title: Text("Light color"),
            subtitle: Text("data"),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow[100],
                ),
                title: Text("Light yellow"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green[100],
                ),
                title: Text("Light green"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue[100],
                ),
                title: Text("Light blue"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red[100],
                ),
                title: Text("Light red"),
              )
            ],
          )),
          Card(
            child: ExpansionTile(
              title: Text("Dark color"),
              subtitle: Text("data"),
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                  title: Text(" yellow"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                  title: Text(" green"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                  title: Text(" blue"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  title: Text(" red"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
