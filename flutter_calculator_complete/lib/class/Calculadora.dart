import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return AlertDialog(
      title: Text("Error!"),
      content: Text("Impossível dividir por zero!"),
      actions: [
        CupertinoDialogAction(child: Text("OK"),)
        ],
      );
  }
}

class Calculadora{

  String textUp;
  String textDown;
  double resultado;
  String operacaoAritmetica;
  // String operacaoAritmetica;
  
  void atualizarDisplay(String numero){
    if(this.textDown == "0"){
      this.textDown = "";
    }
    this.textDown += numero;
  }

  void limpar(){
    this.textDown = "0";
    this.textUp = "0";
  }

  void equalButton(){
    computador();
    this.textDown = this.textUp;
    this.textUp = "0";
  }

  void escolhaDaOperacao(String escolha){

    this.operacaoAritmetica = escolha;
    computador();

  }

  void computador(){
    var num1 = double.parse(textDown), num2 = double.parse(textUp);
    switch(this.operacaoAritmetica){
      case "+":
        this.resultado = num1 + num2;
      break;
      case "-":
        if(num2 == 0){
          resultado = num1;
          break;
        }
        this.resultado = num2 - num1;
      break;
      case "*":
        if(num2 == 0){
          resultado = num1;
          break;
        }
        this.resultado = num1 * num2;
      break;
      case "/":
        if(num2 == 0){
            resultado = num1;
            break;
        }
        if(num2 != 0 && num1 == 0){
          DialogBox();
          resultado = 0;
          break;
        }
        this.resultado = num2 / num1;
      break;
    }
    textUp = resultado.toString();
    textDown = "0";
  }

  Calculadora(){
    this.textDown = "0";
    this.textUp = "0";
  }
}