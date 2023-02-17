
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

TextStyle heading1() {
  return TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
      fontSize: 26,
  );
}

TextStyle heading2(){
  return TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 17,
  );
}

MaterialStateProperty<Color>? getColor(Color color,Color colorPressed){
  final getColor = (Set<MaterialState> states){
    if(states.contains(MaterialState.pressed)) {
      return colorPressed;
    }else{
      return color;
    }
  };
}