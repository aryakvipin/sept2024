import 'package:flutter/material.dart';
import 'package:sepflutter/sqfliteeg/sqlhlepr.dart';
void main(){
  runApp(MaterialApp(home: Uisql(),));
}
class Uisql extends StatefulWidget {
  const Uisql({super.key});

  @override
  State<Uisql> createState() => _UisqlState();
}

class _UisqlState extends State<Uisql> {

  bool isloading=true;
  List<Map<String,dynamic>>note_from_db=[];
  @override
  void initState() {
    veiwnotes();
    super.initState();
  }
  void veiwnotes()async{
    final data=await Sqlheler.readnotes();
    setState(() {
      note_from_db=data;
      isloading=false;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: isloading==true ? Center(child: CircularProgressIndicator()) :
      ListView.builder(itemBuilder: (context,index){
        return Card(child: ListTile(
          title: Text(note_from_db[index]['title']),
          subtitle: Text(note_from_db[index]['subtitle']),
          trailing: Wrap(
             children: [
               IconButton(onPressed: (){
                shofrom(note_from_db[index]['id']);
               }, icon: Icon(Icons.edit)),
               IconButton(onPressed: (){
                 delete(note_from_db[index]['id']);
               }, icon: Icon(Icons.delete))

             ],
          ),
          
        ),);
        
        
        
        
      },itemCount: note_from_db.length,
      ),
      floatingActionButton:  FloatingActionButton(onPressed: ()=>shofrom(null),
      child: Icon(Icons.add),),
    );
  }
    final title=TextEditingController();
    final subtitle=TextEditingController();
  shofrom( int ? id) {
    if(id!=null){
      final exsistdata=note_from_db.firstWhere((notes)=>notes['id']==id);
      title.text=exsistdata['title'];
      subtitle.text=exsistdata['subtitle'];
    }
    showModalBottomSheet(
        isScrollControlled: true,
        context: context, builder: (context){
      return Container(
        padding: EdgeInsets.only(left: 10,top: 10,right: 10,
        bottom: MediaQuery.of(context).viewInsets.bottom+120),
        child: Column(mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: title,
              decoration: InputDecoration(
                hintText: "title",
                border: OutlineInputBorder()
              ),

            ),
            TextField(
              controller: subtitle,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                  hintText: "description"
              ),

            ),
            ElevatedButton(onPressed: () async {
              if(id==null){
               await addnotes();
              }
              if(id!=null){
             await  update(id);
              }
              title.text='';
              subtitle.text='';

            }, child: Text(id==null ? "add" :"update"))

          ],
        ),
      );
    });
  }

  Future<void> addnotes()async {
    await Sqlheler.Addnotes(title.text, subtitle.text);
    veiwnotes();
  }
  Future<void>update(int id)async{
    await Sqlheler.updatenotes(id, title.text, subtitle.text);
    veiwnotes();



}
  Future<void>delete(int id)async{
    await Sqlheler.delete(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Note Deleted")));
    veiwnotes();


  }
}
