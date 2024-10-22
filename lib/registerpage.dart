import 'package:flutter/material.dart';

import 'loginwithvalid.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  bool showpass=true;
  bool showconfrmpass=true;
  GlobalKey<FormState> fromkey=GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow[200],
        child: Form(
          key: fromkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text("REGSITER PAGE", style:  TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60,left: 60,right: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    hintText: "name",
                    labelText: "name",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                   validator: (name){
                    if(name!.isEmpty){
                      return "Enter valid name";
                    }
                   },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                      hintText: "username",
                      labelText: "username",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  validator: (username){
                    if(username!.isEmpty || !username.contains("@")|| !username.contains(".com")){
                      return "Enter valid email";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration:InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(onPressed:
                      (){
                        setState(() {
                          if(showpass){
                            showpass=false;
                          }
                          else{
                            showpass=true;
                          }
                        });
                      }, icon: Icon(showpass==true ?Icons.visibility_off :Icons.visibility)),
                      hintText: "password",
                      labelText: "Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ) ,
                  validator: (password){
                    if(password!.isEmpty || password.length<6){
                      return "Enter valid password";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 60,right: 60,bottom: 60),
                child: TextFormField(
                  obscureText: showconfrmpass,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),

                            suffixIcon: IconButton(onPressed:
                                (){
                                  setState(() {
                                    if(showconfrmpass){
                                      showconfrmpass=false;
                                    }
                                    else{
                                      showconfrmpass=true;
                                    }
                                  });
                                }, icon: Icon(showconfrmpass==true ?Icons.visibility_off :Icons.visibility)),
                            hintText: "confirm password",
                            labelText: "confirm password",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        ),
                  validator: (cpass){
                    if(cpass!.isEmpty || cpass.length<6){
                      return "Enter valid  confirm password";
                    }
                  },
                ),

              ),

              ElevatedButton(onPressed: (){
                final valid= fromkey.currentState!.validate();
                if(valid){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginwithvalid()));
                }
              }, child: Text("Register")),

            ],
          ),
        ),
      ),
    );
  }
}
