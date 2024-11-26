import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Datepickereg() ,));
}
class Datepickereg extends StatefulWidget {
  const Datepickereg({super.key});

  @override
  State<Datepickereg> createState() => _DatepickeregState();
}

class _DatepickeregState extends State<Datepickereg> {
  DateTime  selsctdate=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
            controller: TextEditingController(text: "${selsctdate.toLocal()}".split(" ")[0]),
          readOnly: true,
          onTap:()=>selectedatee(context) ,
          decoration: InputDecoration(suffixIcon: Icon(Icons.calendar_month),
    hintText: "Selecet date")
    ))
    );
  }

 Future<void> selectedatee(BuildContext context) async{
      final DateTime? pickdate= await showDatePicker(context: context, firstDate: DateTime(2020), lastDate: DateTime(2026));
      if(pickdate !=null &&  pickdate!=selsctdate){
        setState(() {
          selsctdate=pickdate;
        });
      }


  }
}
