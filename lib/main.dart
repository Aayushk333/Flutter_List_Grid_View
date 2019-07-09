import 'package:flutter/material.dart';
import 'package:list_and_grid_view/first_screen.dart';

void main()=>runApp(MyApp());

List<String> content = [
  "Aayush",
  "Sweta",
  "Anmol",
  "Aman",
  "Nandhinee",
  "Gayank",
  "Shachi",
  "Vidhi",
  "Vansh",
  "Sahil",
  "1",
  "2",
  "3",
  "4",
  "Aayush",
  "Sweta",
  "Anmol",
  "Aman",
  "Nandhinee",
  "Gayank",
  "Shachi",
  "Vidhi",
  "Vansh",
  "Sahil",
  "1",
  "2",
  "3",
  "4",
];

class MyApp extends StatelessWidget{
  @override 
  Widget build (BuildContext context){
    return MaterialApp(
      title: "Flutter Learn",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.settings,color: Colors.white,),
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,color: Colors.white,),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.navigate_next,color: Colors.white,),
            tooltip: "Click to see the Grid View",
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Grid(),fullscreenDialog: true));
            },
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: content.length,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            title: Text(content[index]),
            );
        },
      ),
      
    );
  }
}