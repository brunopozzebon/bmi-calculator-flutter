import "dart:math";

class Calculator{
  double _bmi;

  Calculator(int height, int weight){
    double heightMeters = height.toDouble()/100;
    this._bmi = weight.toDouble()/pow(heightMeters, 2);
  }

  String getBmi(){
    return this._bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>= 30){
      return "Obeso";
    }else if(_bmi>=25){
      return "Sobrepeso";
    }else if(_bmi>=18.5){
      return "Normal";
    }else if(_bmi>=17){
      return "Abaixo do peso";
    }else{
      return "Muito abaixo do peso";
    }
  }

  String getDescription(){
    if(_bmi>= 30){
      return "Você está bem acima do ideal, tente se exercitar mais!";
    }else if(_bmi>=25){
      return "Você está acima da média, considere uma dieta!";
    }else if(_bmi>=18.5){
      return "Perfeito, você tem feito um bom trabalho!";
    }else if(_bmi>=17){
      return "Um pouco abaixo do normal, considere uma alimentação mais consistente!";
    }else{
      return "Você precisa de mais calorias urgentemente!";
    }
  }
}