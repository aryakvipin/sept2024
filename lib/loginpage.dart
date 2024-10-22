import 'package:flutter/material.dart';
import 'package:sepflutter/regsiterpage.dart';
void main(){
  runApp(MaterialApp(home:Loginpage() ,));
}
class Loginpage extends StatefulWidget {


  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow[200],
        title: Text("Loginpage"),
      ),
      body:Container(
        color: Colors.green[100],
        child: Form(
          child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text("Loginpage", style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold),),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 60,left: 60,right: 60),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "username",
                  hintText: "useraname",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 60,right: 60,bottom: 70),
              child: TextFormField(

                decoration: InputDecoration(

                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan,foregroundColor: Colors.green,

             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
            }, child: Text("Login")),
             SizedBox(height: 20),
               TextButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Registerpage()));
               }, child: Text("Not a user ? create an Account !"))

          ],),
        ),
      )
    );
  }
}
