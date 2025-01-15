

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'logipage.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late SharedPreferences data;
   String? username;
   String ?name;
  String _gender = '';

  @override
  void initState() {
    fetchonme();
    super.initState();
  }
  void fetchonme()async{
    data = await SharedPreferences.getInstance();
    setState(() {
      int genderValue = data.getInt('gender') ?? 0;
      _gender = (genderValue == 1) ? 'Male' : (genderValue == 2) ? 'Female' : 'Not specified';


      username=data.getString('username')!;
      name=data.getString('name')!;
      ;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$username"),),
      body: Center(
        child: Column(
          children: [
            Text(
              "Hai, Welcome $name",

              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Gender: $_gender',
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(onPressed: (){
              data.setBool('newuser',true);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>sharedprefernce()));
            }, child: Text("logout")),
            //
          ],
        ),
      ),
    );
  }
}
