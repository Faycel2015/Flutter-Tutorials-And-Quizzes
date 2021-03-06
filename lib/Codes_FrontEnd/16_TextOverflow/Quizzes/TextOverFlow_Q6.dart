import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter_tutorials_and_quizzes/0_Quizzes/0_GenerateRandomQuizzes.dart';
import 'TextOverFlow_GenerateQuizzes.dart';

String Result="";
Color TxtClr;

String TxtSol="Answer Is:\n"
    "child:Text(\n"
    " 'Ellipsed Text',\n"
    " overflow:\n"
    "  TextOverflow.ellipsis,\n"
    "),";


TextEditingController T1=new TextEditingController();
TextEditingController T2=new TextEditingController();
TextEditingController T3=new TextEditingController();
TextEditingController T4=new TextEditingController();


typedef void OnError(Exception exception);

class TextOverFlowQ6 extends StatefulWidget {
  @override
  _TextOverFlowQ6State createState() => new _TextOverFlowQ6State();
}

class _TextOverFlowQ6State extends State<TextOverFlowQ6> {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState(){
    super.initState();
    initPlayer();
  }

  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  void PlayTapSound() async{
    audioCache.play('Music/Tap.mp3');
  }

  void PlayWinSound() async{
    audioCache.play('Music/Success.mp3');
  }

  void PlayLoseSound() async{
    audioCache.play('Music/Wrong.mp3');
  }

  void testAlert(BuildContext context) {
    var alert = AlertDialog(
        title:Text(
          Result,
          style: TextStyle(
            color: TxtClr,
            fontFamily:"Lobster",
          ),
        ),
        content:
        Container(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(color: Colors.black,),
              Text(
                TxtSol,
                style: TextStyle(
                  color: Colors.cyan,
                  fontFamily:"Lora",
                ),
              ),
              SizedBox(height: 27,),
              SizedBox(
                  width: double.infinity,
                  child:
                  RaisedButton(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Great! Load Another Quizz ",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily:"PT Mono",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: (){
                      PlayTapSound();
                      Navigator.of(context,rootNavigator: true).pop('dialog');
                      if(RandQuizz==false){
                        Generate_TextOverFlow_Quiz(context);
                      }
                      else{
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>cl_RandomQuizz()));
                      }
                    },
                  )
              ),
              SizedBox(height: 7,),
              SizedBox(
                  width: double.infinity,
                  child:
                  RaisedButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Thanks! Get Me Back To Menu ",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily:"PT Mono",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: (){
                      PlayTapSound();
                      Navigator.of(context,rootNavigator: true).pop('dialog');
                       
                    },
                  )
              ),
            ],
          ),
        )
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: (){
                PlayTapSound();
                 
              },
            ),
            title: Text("TextOverFlow Quizz"),
          ),
          body:
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30,),
                    Text(
                      "Fill The Missing Fields To Turn Text OverFlow To Ellipsed:",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PT Mono"
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "import 'package:flutter/material.dart';\n\n"
                          " void main(){\n"
                          "  runApp(Quizz());\n"
                          " }\n\n"

                          " class Quizz extends StatefulWidget {\n"
                          " @override\n"
                          "  Widget build(BuildContext context){\n"
                          "   return MaterialApp(\n"
                          "     debugShowCheckedModeBanner:false,\n"
                          "     home:Scaffold(\n"
                          "      appBar: new AppBar(\n"
                          "       title: Text('TextOverFlow'),\n"
                          "      ),\n"
                          "     body:\n"
                          "      Row(\n"
                          "       children: <Widget>[\n"
                          "        Container(\n"
                          "         width:200,\n"
                          "         height:150,\n"
                          "         child:\n"
                          "          Card("
                      ,
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 76,),
                        Text("child:"),
                        Container(
                          width:40,
                          child: TextField(
                            controller: T1,
                            autofocus: true,
                            maxLength:4,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text("("),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 85,),
                        Text("Text('Ellipsed Text'),"),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 85,),
                        Container(
                          width:80,
                          child: TextField(
                            controller: T2,
                            maxLength:8,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(":"),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 89,),
                        Container(
                          width:120,
                          child: TextField(
                            controller: T3,
                            maxLength:12,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text("."),
                        Container(
                          width:80,
                          child: TextField(
                            controller: T4,
                            maxLength:8,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(","),
                      ],
                    ),


                    Text(
                            "        ),\n"
                            "       )\n"
                            "      )\n"
                            "     ],\n"
                            "    ),\n"
                            "   ),\n"
                            "  );\n"
                            " }\n"
                            "}\n"
                    ),



                    SizedBox(height: 15,),
                    SizedBox(
                      width: double.infinity,
                      child:RaisedButton(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Text(
                          "Check My Answer",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: (){

                          if(T1.text.trim()=="Text" && T2.text.trim()=="overflow"  && T3.text.trim()=="TextOverflow" && T4.text.trim()=="ellipsis"  ){
                            TxtClr=Colors.green;
                            PlayWinSound();
                            Result="Correct Answer";
                          }
                          else{
                            TxtClr=Colors.red;
                            PlayLoseSound();
                            Result="Wrong Answer";
                          }
                          T1.text="";
                          T2.text="";
                          T3.text="";
                          testAlert(context);
                        },
                      ),
                    )

                  ],
                ),
              )
            ],
          )
      ),
    );
  }

}



