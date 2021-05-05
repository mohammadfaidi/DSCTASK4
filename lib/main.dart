
import 'package:flutter/material.dart';
 
void main() => runApp(MaterialApp(home:MyHomePage() ,debugShowCheckedModeBanner: false,)); 
	
 
class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
   int _cIndex = 0;

 List <Widget> _widgets = <Widget> [
   Text("TAB0",style:TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
     //Profile(),
      Text("TAB1",style:TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),

   Text("TAB2",style:TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),
   
   Text("TAB3",style:TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold)),

 ];
  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        
    backgroundColor: Colors.blue,
    elevation: 20,
    
        title: Text("NavigationBar",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
      
        centerTitle: true,
  
        //SizedBox(width: 10.0,), 

      ),
  body: Center(
child:_widgets.elementAt(_cIndex) ,
  ),
  
 
    bottomNavigationBar:BottomNavigationBar(
        currentIndex: _cIndex,
        type: BottomNavigationBarType.fixed ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,color:  Colors.red),
            title: new Text('This')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers,color: Colors.red),
            title: new Text('Is')
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.dashboard,color:  Colors.red),
            title: new Text('Bottom')
          ),

            BottomNavigationBarItem(
            icon: Icon(Icons.info,color: Colors.red),
            title: new Text('Bar')
          ),
        ],
        onTap: (index){
            _incrementTab(index);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton(
        
        onPressed:(){ _incrementTab(1); },
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), 
 drawer: Drawer(
    child:ListView(
children:<Widget>[
  DrawerHeader(
child:Column(children: [
  Expanded(child: 
  Image.network("https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png",width:200),),
  Text("Flutter",style:TextStyle(fontSize: 20,color: Colors.white)),
],
),
decoration: BoxDecoration(color: Colors.blue),
  ),
  ListTile(
title: Text("This"),
leading: Icon(Icons.menu),
onTap: (){
    Navigator.pop(context);
  
},
  ),


  ListTile(
title: Text("Is"),
leading: Icon(Icons.layers),
onTap: (){
  Navigator.pop(context);
  
},
  ),
    ListTile(
title: Text("Bottom"),
leading: Icon(Icons.dashboard),
onTap: (){

    Navigator.pop(context);

},
  ),

     ListTile(
title: Text("Bar"),
leading: Icon(Icons.info),
onTap: (){

    Navigator.pop(context);

},
  ),


],
    ),
  ),
    
    );
 }

}
