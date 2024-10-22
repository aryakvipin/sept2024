import 'package:flutter/material.dart';
import 'package:sepflutter/registerpage.dart';

import 'homepage.dart';
void main (){
  runApp(MaterialApp(home: Loginwithvalid(),));
}
class Loginwithvalid extends StatefulWidget {
  const Loginwithvalid({super.key});

  @override
  State<Loginwithvalid> createState() => _LoginwithvalidState();
}

class _LoginwithvalidState extends State<Loginwithvalid> {
  GlobalKey<FormState> formkey=GlobalKey();
    bool shopass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),

      ),
      body: Container(color: Colors.greenAccent,
      child: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("Login" ,style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60,top: 30),
            child: TextFormField(

              decoration: InputDecoration(
                labelText: "username",
                hintText: "username",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))

              ),
              validator: (username){
                if(username!.isEmpty || !username.contains('@')|| !username.contains(".com")){
                  return "Enter valid email";
                }
                else{
                  return null;
                }
              }


            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60,top: 20,bottom: 50,),
            child: TextFormField(
              obscureText:shopass ,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  labelText: "password",
                  hintText: "password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: (){
                      setState(() {
                         if(shopass){
                           shopass=false;

                         }
                         else{
                           shopass=true;
                         }
                      });

                  },
                      icon: Icon(shopass==true? Icons.visibility_off : Icons.visibility)),
                  border: OutlineInputBorder
                    (borderRadius: BorderRadius.circular(10))

              ),
              validator: (password){
                if(password!.isEmpty  || password.length<6){
                  return "Enter valid password";
                }
              },
            ),
          ),

            ElevatedButton(onPressed: (){
              var valid=formkey.currentState!.validate();
              if(valid){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
              }

            }, child: Text("Login")),
            SizedBox(height: 30,),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Registerpage()));
          }, child: Text("Not a user create an account"))

        ],),
      ),),
    );
  }
}
