import 'package:flutter/material.dart';
import './chololate.dart';
import './leaf.dart';
import './sunflower.dart';
import './rose.dart';
import './orange.dart';
import './grapes.dart';
import './check.dart';

class Puzzles extends StatefulWidget {
  @override
  _PuzzlesState createState() => _PuzzlesState();
}

class _PuzzlesState extends State<Puzzles> {
  bool acceptedOrange=false;
  bool acceptedChocolate=false;
  bool acceptedLeaf=false;
  bool acceptedSunflower=false;
  bool acceptedGrapes=false;
  bool acceptedRose=false;
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body:Column(
          children: <Widget>[
          SizedBox(height: 20,),
          Row(
            children: <Widget>[
            SizedBox(width: 5),
            Draggable(
              data:'leaf',
              child:acceptedLeaf?Checkmark():Leaf(),
              feedback:acceptedLeaf?Container():Leaf(),
              childWhenDragging:acceptedLeaf?Container():Leaf(),
            ),
            SizedBox(width: 62),
            Container(
              color: Colors.purple,
              height: 100,
              width:210,
              child:  DragTarget<String>(
              builder: 
              (context, List<String> candidateData, rejectedData) {
              return acceptedGrapes?Center(child: Text("Correct", style: TextStyle(color: Colors.white, fontSize: 20.0),)):Container();
              },
              onWillAccept: (data) {
                if(data=='grapes')
                  return true;
                else
                  return false;
              }, 
              onAccept: (data) {
                if(data=='grapes') {
                  setState(() {
                    acceptedGrapes = true;
                  });
                } 
                else{
                  setState(() {
                    acceptedGrapes = false;
                  });
                }
              },
              ),
              )
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: <Widget>[
            SizedBox(width: 5),
            Draggable(
              data:'sunflower',
              child:acceptedSunflower?Checkmark(): Sunflower(),
              feedback:acceptedSunflower?Container(): Sunflower(),
              childWhenDragging:acceptedSunflower?Container(): Sunflower(),
            ),
            SizedBox(width: 62),
            Container(
              color: Colors.red[700],
              height: 100,
              width:210,
              child:  DragTarget<String>(
                builder: 
                (context, List<String> candidateData, rejectedData) {
                return acceptedRose?Center(child: Text("Correct", style: TextStyle(color: Colors.white, fontSize: 20.0),)):Container();
                },
                onWillAccept: (data) {
                  if(data=='rose')
                    return true;
                  else
                    return false;
                }, 
                onAccept: (data) {
                  if(data=='rose') {
                    setState(() {
                      acceptedRose = true;
                    });
                  } 
                  else{
                    setState(() {
                      acceptedRose = false;
                    });
                  }
                },
              ),
              )
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: <Widget>[
            SizedBox(width: 5),
            Draggable(
              data:'rose',
              child:acceptedRose?Checkmark(): Rose(),
              feedback:acceptedRose?Container(): Rose(),
              childWhenDragging:acceptedRose?Container(): Rose(),
            ),
            SizedBox(width: 62),
            Container(
              color: Colors.brown,
              height: 100,
              width:210,
              child:  DragTarget<String>(
                  builder: 
                  (context, List<String> candidateData, rejectedData) {
                  return acceptedChocolate?Center(child: Text("Correct", style: TextStyle(color: Colors.white, fontSize: 20.0),)):Container();
                  },
                  onWillAccept: (data) {
                    if(data=='chocolate')
                      return true;
                    else
                      return false;
                  }, 
                  onAccept: (data) {
                    if(data=='chocolate') {
                      setState(() {
                        acceptedChocolate = true;
                      });
                    } 
                    else{
                      setState(() {
                        acceptedChocolate = false;
                      });
                    }
                  },
              ),)
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: <Widget>[
            SizedBox(width: 5),
            Draggable(
              data:'grapes',
              child:acceptedGrapes?Checkmark(): Grapes(),
              feedback:acceptedGrapes?Container(): Grapes(),
              childWhenDragging:acceptedGrapes?Container(): Grapes(),
            ),
            SizedBox(width: 62),
            Container(
              color: Colors.yellow[700],
              height: 100,
              width:210,
              child:  DragTarget<String>(
                builder: 
                (context, List<String> candidateData, rejectedData) {
                return acceptedSunflower?Center(child: Text("Correct", style: TextStyle(color: Colors.white, fontSize: 20.0),)):Container();
                },
                onWillAccept: (data) {
                  if(data=='sunflower')
                    return true;
                  else
                    return false;
                }, 
                onAccept: (data) {
                  if(data=='sunflower') {
                    setState(() {
                      acceptedSunflower = true;
                    });
                  } 
                  else{
                    setState(() {
                      acceptedSunflower = false;
                    });
                  }
                },
                ),)
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: <Widget>[
            SizedBox(width: 5),
            Draggable(
                  data:'chocolate',
                  child:acceptedChocolate?Checkmark():Chocolate(),
                  feedback:acceptedChocolate?Container():Chocolate(),
                  childWhenDragging:acceptedChocolate?Container():Chocolate(),
            ),
        SizedBox(width: 62),
        Container(
          color: Colors.orange,
          height: 100,
          width:210,
          child:  DragTarget<String>(
            builder: 
            (context, List<String> candidateData, rejectedData) {
            return acceptedOrange?Center(child: Text("Correct", style: TextStyle(color: Colors.white, fontSize: 20.0),)):Container();
            },
            onWillAccept: (data) {
              if(data=='orange')
                return true;
              else
                return false;
            }, 
            onAccept: (data) {
              if(data=='orange') {
                setState(() {
                  acceptedOrange = true;
                });
              } 
              else{
                print('no');
                setState(() {
                  acceptedOrange = false;
                });
              }
            },
          ),
        )
        ],
      ),
      SizedBox(height: 30,),
      Row(
        children: <Widget>[
        SizedBox(width: 5),
        Draggable(
              data:'orange',
              child:acceptedOrange?Checkmark():Orange(),
              feedback:acceptedOrange?Container():Orange(),
              childWhenDragging:acceptedOrange?Container():Orange(),
        ),
        SizedBox(width: 62),
        Container(
          color: Colors.lightGreen,
          height: 100,
          width:210,
          child:  DragTarget<String>(
            builder: 
            (context, List<String> candidateData, rejectedData) {
            return acceptedLeaf?Center(child: Text("Correct", style: TextStyle(color: Colors.white, fontSize: 20.0),)):Container();
            },
            onWillAccept: (data) {
              if(data=='leaf')
                return true;
              else
                return false;
            }, 
            onAccept: (data) {
              if(data=='leaf') {
                setState(() {
                  acceptedLeaf = true;
                });
              } 
              else{
                print('no');
                setState(() {
                  acceptedLeaf = false;
                });
              }
            },
          ),
          )
        ],
      ),
    ],),
    floatingActionButton: FloatingActionButton(
          onPressed: () {
            this.setState(() {
              acceptedOrange=false;
              acceptedChocolate=false;
              acceptedLeaf=false;
              acceptedSunflower=false;
              acceptedGrapes=false;
              acceptedRose=false;
            });
          },
          child: Icon(Icons.refresh),
          backgroundColor: Colors.deepPurple,
        ),
    );
  }
}