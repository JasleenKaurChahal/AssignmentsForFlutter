import 'package:flutter/material.dart';
import './signup.dart';
import './carousal.dart';
import './login.dart';
import './messages.dart';

class PlacesList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PlacesListDrawer();
  }
}

class PlacesListDrawer extends State<PlacesList> {
  int _selectedIndex = 0;
  int _currentIndex=0;

  final List<Widget> _children = [
  Messages(),
  Center(child:Carousal()),
  SignUp(),
  // Assignment()
  ];

  _onSelectItem(int index) {
  setState(() {
    _selectedIndex = index;
    });
  Navigator.pop(context);
  }
  
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var col=[Colors.green,Colors.red,Colors.black,Colors.pink,Colors.blueAccent,Colors.purple];
    return Container(
      child:Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: col[_selectedIndex],
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex, // this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                activeIcon:Icon(Icons.home,color:Colors.grey), 
                icon: new Icon(Icons.home,color:col[_selectedIndex]),
                title: new Text('Home',style:TextStyle(color:_currentIndex==0?Colors.grey:col[_selectedIndex])),
              ),
              BottomNavigationBarItem(
                activeIcon:Icon(Icons.mail,color:Colors.grey), 
                icon: new Icon(Icons.mail,color:col[_selectedIndex]),
                title: new Text('Messages',style:TextStyle(color:_currentIndex==1?Colors.grey:col[_selectedIndex])),
              ),
              BottomNavigationBarItem(
                activeIcon:Icon(Icons.person,color:Colors.grey), 
                icon: Icon(Icons.person,color:col[_selectedIndex]),
                title: Text('Profile',style:TextStyle(color:_currentIndex==2?Colors.grey:col[_selectedIndex]))
              )
            ],
      ),
        drawer:Drawer
        (
          child:ListView(children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(color: col[_selectedIndex],),
              child:Container(
              child:Row(children: <Widget>[
              Container(
                  height:100.0,
                  width:100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                      "https://images.unsplash.com/photo-1524492412937-b28074a5d7da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
                    )
                  )),
                  SizedBox(width:15.0),
                  Text('Welcome User!\nPlan your vacation',
                textAlign: TextAlign.center,
                style:TextStyle(
                  color:Colors.white
                  // width:200.0
                )
              ),
              ],)
            )
          ),
      ListTile(
        leading:Icon(Icons.settings,color:Colors.green),
        //subtitle: Text('Select to change color'),
        title:Text('Green Color',style:TextStyle(color:Colors.green)),
        trailing: Icon(Icons.add,color:Colors.green),
        onTap: ()=>_onSelectItem(0),
      ),
      ListTile(
        leading:Icon(Icons.settings,color:Colors.red),
        title:Text('Red Color',style:TextStyle(color:Colors.red)),
        trailing: Icon(Icons.add,color:Colors.red),
        onTap: ()=>_onSelectItem(1),
      ),
      ListTile(
        leading:Icon(Icons.settings,color:Colors.black),
        title:Text('Black Color',style:TextStyle(color:Colors.black)),
        trailing: Icon(Icons.add,color:Colors.black),
        onTap: ()=>_onSelectItem(2),
      ),
      ListTile(
        leading:Icon(Icons.settings,color:Colors.pink),
        title:Text('Pink Color',style:TextStyle(color:Colors.pink)),
        trailing: Icon(Icons.add,color:Colors.pink),
        onTap: ()=>_onSelectItem(3),
      ),
      ListTile(
        leading:Icon(Icons.settings,color:Colors.blueAccent),
        title:Text('Blue Color',style:TextStyle(color:Colors.blueAccent)),
        trailing: Icon(Icons.add,color:Colors.blueAccent),
        onTap: ()=>_onSelectItem(4),
      ),
      ListTile(
        leading:Icon(Icons.settings,color:Colors.purple),
        title:Text('Purple Color',style:TextStyle(color:Colors.purple)),
        trailing: Icon(Icons.add,color:Colors.purple),
        onTap: ()=>_onSelectItem(5),
      ),
      ListTile(
        leading:Icon(Icons.flip_to_back,color:Colors.indigo),
        title:Text('Sign out',style:TextStyle(color:Colors.indigo)),
        subtitle:Text('Sign out from app'),
        trailing: Icon(Icons.add,color:Colors.indigo),
        onTap: (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        }
      ),
    ],
  )
          //child:getListView(context,_onSelectItem(_selectedIndex))
    )));
  }
}

// Widget getListView(context,_onSelectItem(val)){
//   var listView=
//   return listView;
// }