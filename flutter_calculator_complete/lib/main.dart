import 'package:flutter/material.dart';
import 'class/Calculadora.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  var numeroQualquer= 0.0;
  String textDown = "0";
  String textUp = "0";
  String operacaoAritmetica = "";

  Calculadora calc = new Calculadora();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff306f8b),
              Color(0xff2d6680),
              Color(0xff306f8b),
            ]
          )
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 30.0)),
            Container(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  Text("$textUp", style: TextStyle(fontSize: 30)),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0),),
            Container(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  Text("$textDown", style: TextStyle(fontSize: 60.0),),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 80)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonTheme(
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text("7",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState(() {
                        DialogBox;
                        calc.atualizarDisplay("7");
                        textDown = calc.textDown;                        
                      });
                    },
                  ),
                ),
                ButtonTheme(
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text("8",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState(() {
                        calc.atualizarDisplay("8");
                        textDown = calc.textDown;                        
                      });
                    },
                  ),
                ),
                ButtonTheme(
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text("9",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState(() {
                        calc.atualizarDisplay("9");
                        textDown = calc.textDown;                        
                      });
                    },
                  ),
                ),
                ButtonTheme(
                  buttonColor: Colors.red,
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Icon(Icons.add, size: 40.0,),
                    onPressed: (){
                      setState((){
                        operacaoAritmetica = "+";
                        calc.escolhaDaOperacao(operacaoAritmetica);
                        textUp = calc.textUp;
                        textDown = calc.textDown;
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 30.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonTheme(
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text("4",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState(() {
                        calc.atualizarDisplay("4");
                        textDown = calc.textDown;                        
                      });
                    },
                  ),
                ),
                ButtonTheme(
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text("5",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState(() {
                        calc.atualizarDisplay("5");
                        textDown = calc.textDown;                        
                      });
                    },
                  ),
                ),
                ButtonTheme(
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text("6",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState(() {
                        calc.atualizarDisplay("6");
                        textDown = calc.textDown;                        
                      });
                    },
                  ),
                ),
                ButtonTheme(
                  buttonColor: Colors.red,
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Text("-",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState((){
                        operacaoAritmetica = "-";
                        calc.escolhaDaOperacao(operacaoAritmetica);
                        textUp = calc.textUp;
                        textDown = calc.textDown;
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 30.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonTheme(
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text("1",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState(() {
                        calc.atualizarDisplay("1");
                        textDown = calc.textDown;                        
                      });
                    },
                  ),
                ),
                ButtonTheme(
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text("2",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState(() {
                        calc.atualizarDisplay("2");
                        textDown = calc.textDown;                        
                      });
                    },
                  ),
                ),
                ButtonTheme(
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text("3",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState(() {
                        calc.atualizarDisplay("3");
                        textDown = calc.textDown;                        
                      });
                    },
                  ),
                ),
                ButtonTheme(
                  buttonColor: Colors.red,
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Text("*",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState((){
                        operacaoAritmetica = "*";
                        calc.escolhaDaOperacao(operacaoAritmetica);
                        textUp = calc.textUp;
                        textDown = calc.textDown;
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 30.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonTheme(
                  buttonColor: Colors.green,
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text("AC",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState(() {
                        calc.limpar();
                        textDown = calc.textDown;
                        textUp = calc.textUp;                     
                      });
                    },
                  ),
                ),
                ButtonTheme(
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text("0",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState(() {
                        calc.atualizarDisplay("0");
                        textDown = calc.textDown;                        
                      });
                    },
                  ),
                ),
                ButtonTheme(
                  buttonColor: Colors.green,
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text("=",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState((){
                        calc.equalButton();
                        textDown = calc.textDown;
                        textUp = calc.textUp;
                      });
                    },
                  ),
                ),
                ButtonTheme(
                  buttonColor: Colors.red,
                  minWidth: 60,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Text("/",
                      style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold),
                        ),
                    onPressed: (){
                      setState((){
                        operacaoAritmetica = "/";
                        calc.escolhaDaOperacao(operacaoAritmetica);
                        textUp = calc.textUp;
                        textDown = calc.textDown;
                      });
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}