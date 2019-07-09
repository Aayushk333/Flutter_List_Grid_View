import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),

      body: GridView.count(
        crossAxisCount: 3,
        children : List.generate(100, (index){
          return Center(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.blue[300],
                border: Border.all(
                  width: 1.0
                ),),
                child: Text('Item $index',style: TextStyle(fontSize: 20.0,),),
                alignment: Alignment(0.0,0.0),

            ),
          );

        }),

      ),
      
    );
  }
}