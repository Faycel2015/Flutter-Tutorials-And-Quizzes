import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Quizzes/4_TextField_Text_TextField_Text_TextField_Text.dart';

String Layouts_Q12_TxtSol =
    "Row(\n"
    " mainAxisAlignment:\n"
    "  MainAxisAlignment.end,"
    " children: <Widget>[\n"
    "   Text('Hi'),\n"
    "   Text('Hi'),\n"
    " ],\n"
    ")\n";

String Layouts_Q12_Question = "Fill The Missing Fields To Align Texts Horizontally To The End";

var Layouts_Q12_T1_Controller = new TextEditingController();
var Layouts_Q12_T1_Answer = "mainAxisAlignment";

var Layouts_Q12_T2_Controller = new TextEditingController();
var Layouts_Q12_T2_Answer = "MainAxisAlignment";

var Layouts_Q12_T3_Controller = new TextEditingController();
var Layouts_Q12_T3_Answer = "center";


List Layouts_Q12_list = [
  Text(
        "import 'package:flutter/material.dart';\n\n"

        "void main() {\n"
        "  runApp(Quizz());\n"
        "}\n\n"

        "class Quizz extends StatelessWidget{\n"
        "  @override\n"
        "  Widget build(BuildContext context) {\n"
        "        return MaterialApp(\n"
        "         debugShowCheckedModeBanner:false,\n"
        "         title:'Quizz',\n"
        "         home:\n"
        "          new Scaffold(\n"
        "           appBar:AppBar(\n"
        "            title:Text('Layouts Quizz'),\n"
        "           ),\n"
        "           body:Container(\n"
        "            width :MediaQuery.of(context).size.width,\n"
        "            height:MediaQuery.of(context).size.height,\n"
        "            child:Row(\n"

  ),
  CmpQuizz_TextField_Text_TextField_Text_TextField_Text(
      Spacing: 76,
      TC1_Controller:Layouts_Q12_T1_Controller,
      TC1_Width: Layouts_Q12_T1_Answer.length * 10.0,
      TC1_MaxLength: Layouts_Q12_T1_Answer.length,
      Text1:":",
      TC2_Controller:Layouts_Q12_T2_Controller,
      TC2_Width: Layouts_Q12_T2_Answer.length * 10.0,
      TC2_MaxLength: Layouts_Q12_T2_Answer.length,
      Text2:".",
      TC3_Controller:Layouts_Q12_T3_Controller,
      TC3_Width: Layouts_Q12_T3_Answer.length * 10.0,
      TC3_MaxLength: Layouts_Q12_T3_Answer.length,
      Text3:",",
  ),
  
  Text(
        "      children: <Widget>[\n"
        "       Text('Hi'),\n"
        "       Text('Hi'),\n"
        "      ],\n"
        "     ),\n"
        "    ),\n"
        "   ),\n"
        "  );\n"
        " }\n"
        "}",
  ),


];