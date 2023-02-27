// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, override_on_non_overriding_member, unnecessary_string_interpolations

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';

void main() {
  runApp(MaterialApp(
    home: demo(),
    debugShowCheckedModeBanner: false,
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {

  List<String> a = [];
  int i=0;
  int cnt=0;
  String msg="";
  int checkwin=0;

  @override
  void number() {
    List<int> l = [];
    for (i = 0; i < 9;) {
      int min = 0, max = 8;
      int no = min + Random().nextInt(max - min + 1);
      if (!l.contains(no)) {
        l.add(no);
        i++;
      }
    }
    for ( i = 0; i < 9; i++) {
      if (l[i] == 0) {
        a.add("");
      } else {
        a.add("${l[i]}");
      }
    }
  }
  win()
  {
    if (a[0]=="1" &&
        a[1]=="2" &&
        a[2]=="3" &&
        a[3]=="4" &&
        a[4]=="5" &&
        a[5]=="6" &&
        a[6]=="7" &&
        a[7]=="8" &&
        a[8]=="")
    {
      msg = "You Win The Game";
      checkwin=1;
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    number();
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop:() => _onBackButtonPressed (context),
        child: Scaffold(
        appBar: AppBar(centerTitle: true,
        title: Text("Number\nPuzzle🧩",style:TextStyle(color:Colors.black,letterSpacing:1,fontFamily:"fonts")),
        actions: [
          Icon(Icons.info_outline,color:Colors.black,size:25),SizedBox(width:10),
        ],
        backgroundColor:Colors.white,elevation:0,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: 43,
                    width: 190,
                    decoration: BoxDecoration(
                        color: checkwin == 0 ? Colors.black : Colors.green,
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(25),top:Radius.circular(60))),
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(),
                    child:    checkwin == 0 ? Text(
                        "Player's Moves :-  $cnt" ,
                      style: TextStyle(fontSize: 18,color:Colors.white),
                    ) : Text("$msg"),
                  ),
                ],
              )),
          Row(
            children: [
              InkWell(
                  splashFactory:NoSplash.splashFactory,highlightColor:Colors.transparent,
                  onTap:() {
                    if(a[1]=="" && checkwin==0)
                    {
                      a[1]=a[0];
                      a[0]="";
                      cnt++;
                      win();
                    }
                    else if(a[3]=="" && checkwin==0)
                    {
                      a[3]=a[0];
                      a[0]="";
                      cnt++;
                      win();
                    }
                    setState(() {});
                  },
                  child: Container(
                    height:85,width:85,
                    margin:EdgeInsets.only(left:45,top:30),
                    child:abc(0),
                  )
              ),
              InkWell(
                splashFactory:NoSplash.splashFactory,highlightColor:Colors.transparent,
                onTap:() {
                  if(a[0]=="" && checkwin==0)
                  {
                    a[0]=a[1];
                    a[1]="";
                    cnt++;
                    win();
                  }
                  else if(a[2]=="" && checkwin==0)
                  {
                    a[2]=a[1];
                    a[1]="";
                    cnt++;
                    win();
                  }
                  else if(a[4]=="" && checkwin==0)
                  {
                    a[4]=a[1];
                    a[1]="";
                    cnt++;
                    win();
                  }
                  setState(() {});
                },
                child: Container(
                  height:85,width:85,
                  margin:EdgeInsets.only(left:10,top:30),
                  child:abc(1),
                ),
              ),
              InkWell(
                splashFactory:NoSplash.splashFactory,highlightColor:Colors.transparent,
                onTap:() {
                  if(a[1]=="" && checkwin==0)
                  {
                    a[1]=a[2];
                    a[2]="";
                    cnt++;
                    win();
                  }
                  else if(a[5]=="" && checkwin==0)
                  {
                    a[5]=a[2];
                    a[2]="";
                    cnt++;
                    win();
                  }

                  setState(() {});
                },
                child: Container(
                  height:85,width:85,
                  margin:EdgeInsets.only(left:10,top:30),
                  child:abc(2),
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                splashFactory:NoSplash.splashFactory,highlightColor:Colors.transparent,
                onTap:() {
                  if(a[0]=="" && checkwin==0)
                  {
                    a[0]=a[3];
                    a[3]="";
                    cnt++;
                    win();
                  }
                  else if(a[4]=="" && checkwin==0)
                  {
                    a[4]=a[3];
                    a[3]="";
                    cnt++;
                    win();
                  }
                  else if(a[6]=="" && checkwin==0)
                  {
                    a[6]=a[3];
                    a[3]="";
                    cnt++;
                    win();
                  }
                  setState(() {});
                },
                child: Container(
                  margin:EdgeInsets.only(left:45,top:10),
                  height:85,width:85,
                  child:abc(3),
                ),
              ),
              InkWell(
                splashFactory:NoSplash.splashFactory,highlightColor:Colors.transparent,
                onTap:() {
                  if(a[1]=="" && checkwin==0)
                  {
                    a[1]=a[4];
                    a[4]="";
                    cnt++;
                    win();
                  }
                  else if(a[5]=="" && checkwin==0)
                  {
                    a[5]=a[4];
                    a[4]="";
                    cnt++;
                    win();
                  }
                  else if(a[7]=="" && checkwin==0)
                  {
                    a[7]=a[4];
                    a[4]="";
                    cnt++;
                    win();
                  }
                  else if(a[3]=="" && checkwin==0)
                  {
                    a[3]=a[4];
                    a[4]="";
                    cnt++;
                    win();
                  }
                  setState(() {});
                },
                child: Container(
                  margin:EdgeInsets.only(left:10,top:10),
                  height:85,width:85,
                  child:abc(4),
                ),
              ),
              InkWell(
                splashFactory:NoSplash.splashFactory,highlightColor:Colors.transparent,
                onTap:() {
                  if(a[2]=="" && checkwin==0)
                  {
                    a[2]=a[5];
                    a[5]="";
                    cnt++;
                    win();
                  }
                  else if(a[4]=="" && checkwin==0)
                  {
                    a[4]=a[5];
                    a[5]="";
                    cnt++;
                    win();
                  }
                  else if(a[8]=="" && checkwin==0)
                  {
                    a[8]=a[5];
                    a[5]="";
                    cnt++;
                    win();
                  }
                  setState(() {});
                },
                child: Container(
                  height:85,width:85,
                  margin:EdgeInsets.only(left:10,top:10),
                  child:abc(5),
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                splashFactory:NoSplash.splashFactory,highlightColor:Colors.transparent,
                onTap:() {
                  if(a[3]=="" && checkwin==0)
                  {
                    a[3]=a[6];
                    a[6]="";
                    cnt++;
                    win();
                  }
                  else if(a[7]=="" && checkwin==0)
                  {
                    a[7]=a[6];
                    a[6]="";
                    cnt++;
                    win();
                  }
                  setState(() {});
                },
                child: Container(
                  margin:EdgeInsets.only(left:45,top:10),
                  height:85,width:85,
                  child:abc(6),
                ),
              ),
              InkWell(
                splashFactory:NoSplash.splashFactory,highlightColor:Colors.transparent,
                onTap:() {
                  if(a[6]=="" && checkwin==0)
                  {
                    a[6]=a[7];
                    a[7]="";
                    cnt++;
                    win();
                  }
                  else if(a[4]=="" && checkwin==0)
                  {
                    a[4]=a[7];
                    a[7]="";
                    cnt++;
                    win();
                  }
                  else if(a[8]=="" && checkwin==0)
                  {
                    a[8]=a[7];
                    a[7]="";
                    cnt++;
                    win();
                  }
                  setState(() {});
                },
                child: Container(
                  margin:EdgeInsets.only(left:10,top:10),
                  height:85,width:85,
                  child:abc(7),
                ),
              ),
              InkWell(
                splashFactory:NoSplash.splashFactory,highlightColor:Colors.transparent,
                onTap:() {
                  if(a[5]=="" && checkwin==0)
                  {
                    a[5]=a[8];
                    a[8]="";
                    cnt++;
                    win();
                  }
                  else if(a[7]=="" && checkwin==0)
                  {
                    a[7]=a[8];
                    a[8]="";
                    cnt++;
                    win();
                  }
                  setState(() {});
                },
                child: Container(
                  margin:EdgeInsets.only(left:10,top:10),
                  height:85,width:85,
                  child:abc(8),
                ),
              ),
            ],
          ),
          Expanded(
              flex: 2,
              child: Container(
                height: 40,
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.only(),
                child:Row(
                  children: [
                    Container(
                      height:40,width:120,
                      margin: EdgeInsets.only(left:40),
                      child: GFButton(
                        elevation:10,
                        onPressed: (){
                          cnt=0;
                          a=[];
                          msg="";
                          number();
                          setState(() {});
                        },
                        text: "RESET",textStyle:TextStyle(letterSpacing:1),
                        icon: Icon(Icons.clear_rounded,color:Colors.red),
                        color:Colors.black,
                      ),
                    ),
                    Container(
                      height:40,width:125,
                      margin: EdgeInsets.only(left:40),
                      child: GFButton(
                        elevation:10,
                        onPressed: (){
                          cnt=0;
                          a=[];
                          msg="";
                          number();
                          setState(() {});
                        },
                        text: "NEW GAME",textStyle:TextStyle(letterSpacing:1),
                        icon: Icon(Icons.not_started,color:Colors.green),
                        color:Colors.black,
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    ));
  }

  Container abc(int j)
  {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:(a[j] == "") ? Colors.redAccent : Colors.black,
        borderRadius:BorderRadius.circular(10)
      ),
      child:
      a[j] == "" ? Text("MOVE",
                   style:TextStyle(fontSize:20,letterSpacing:1, fontFamily:"fonts"))
                 : Text(a[j],style: TextStyle(
                   color:Colors.white,
                   fontSize: 35,
                   fontFamily: "fonts",
              ),
           ),
       );
    }
  Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool exitApp = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: const Text(
            ("Are you sure you want to Exit App?"),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text(
                "No",
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text(
                "Yes",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
    return exitApp ? false : true;
  }
}
