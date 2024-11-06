import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home:Staggerdgridex() ,));
}
class Staggerdgridex extends StatefulWidget {
  const Staggerdgridex({super.key});

  @override
  State<Staggerdgridex> createState() => _StaggerdgridexState();
}

class _StaggerdgridexState extends State<Staggerdgridex> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Staggerdgrid"),
      ),
      body: SingleChildScrollView(
        child:StaggeredGrid.count(crossAxisCount: 4,
        children: [
        StaggeredGridTile.count(
            crossAxisCellCount: 1, mainAxisCellCount: 1, child: Card(color: Colors.red,)) ,
          StaggeredGridTile.count(
              crossAxisCellCount: 2, mainAxisCellCount: 1, child: Card(color: Colors.red,)),
          StaggeredGridTile.count(
              crossAxisCellCount: 1, mainAxisCellCount: 2, child: Card(color: Colors.red,)),
          StaggeredGridTile.count(
              crossAxisCellCount: 3, mainAxisCellCount: 1, child: Card(color: Colors.red,))



        ],) ,
      ),
    );
  }
}
