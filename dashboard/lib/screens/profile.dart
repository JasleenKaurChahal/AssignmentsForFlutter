import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width -10.0;
    double height = MediaQuery. of(context). size. height-10.0;
    return Container(
      margin: EdgeInsets.all(10.0),
      child:Column(children: <Widget>
      [
        Row(children: <Widget>[
        Expanded(
          child:Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRnhjGszHKUvRq1fHyNTysMLmVE2iMLguqTKTSP6FDl7joZPKVN")
                )
            ),
          height:height*(0.6/5),
          width:width*(0.7/3),
        )),
        SizedBox(width: 10.0),
        Expanded(
          child:Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                    "https://scx1.b-cdn.net/csz/news/800/2019/toomanyairpl.jpg")
                )
            ),
          height:height*(0.6/5),
          width:width*(0.7/3), 
        )),
        SizedBox(width: 10.0),
        Expanded(
          child:Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS0T4vph95k26fiElGBbDh_Y2ZeDkXAUG0dkxKwFf7ZHreCzy9M")
                )
            ),
          height:height*(0.6/5),
          width:width*(0.7/3),
        )),
      ],
      ),
      // Container(
      //   child:getListView(context)
      // )
      ])
    );
  }
}

Widget getListView(context){
  var listView=ListView(children: <Widget>[
      ListTile(
        leading:Icon(Icons.settings,color:Colors.green),
        //subtitle: Text('Select to change color'),
        title:Text('Green Color',style:TextStyle(color:Colors.green)),
        trailing: Icon(Icons.add,color:Colors.green),
        // onTap: ()=>_onSelectItem(0),
      ),
      ListTile(
        leading:Icon(Icons.settings,color:Colors.red),
        title:Text('Red Color',style:TextStyle(color:Colors.red)),
        trailing: Icon(Icons.add,color:Colors.red),
        // onTap: ()=>_onSelectItem(1),
      ),
      ListTile(
        leading:Icon(Icons.settings,color:Colors.black),
        title:Text('Black Color',style:TextStyle(color:Colors.black)),
        trailing: Icon(Icons.add,color:Colors.black),
        // onTap: ()=>_onSelectItem(2),
      ),
      ListTile(
        leading:Icon(Icons.settings,color:Colors.pink),
        title:Text('Pink Color',style:TextStyle(color:Colors.pink)),
        trailing: Icon(Icons.add,color:Colors.pink),
        // onTap: ()=>_onSelectItem(3),
      ),
      ListTile(
        leading:Icon(Icons.settings,color:Colors.blueAccent),
        title:Text('Blue Color',style:TextStyle(color:Colors.blueAccent)),
        trailing: Icon(Icons.add,color:Colors.blueAccent),
        // onTap: ()=>_onSelectItem(4),
      ),
      ListTile(
        leading:Icon(Icons.settings,color:Colors.purple),
        title:Text('Purple Color',style:TextStyle(color:Colors.purple)),
        trailing: Icon(Icons.add,color:Colors.purple),
        // onTap: ()=>_onSelectItem(5),
      )]);
      return listView;
}