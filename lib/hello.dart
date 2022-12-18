//top level variable
import 'dart:io';
import 'dart:math';

//KOTLIN - JVM-based
//import 'package:flutter/foundation.dart';

//var x =10;

//top level function
void main() {
  const pi = 3.14; //compile-time constant
  var x = pi * 2;

  var r = Random();
  var answer = r.nextInt(100) + 1; //randon 1-100
  var isCorrect = false;
  int? guess;
  int count = 0;
  do {
    //console app
    stdout.write('Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync(); //dart infer type

    if (input == null) {
      print('Error input is NULL');
      continue;
    }
    guess = int.tryParse(input); //if not number print error, only number

//Linter
    if (guess == null) {
      // print('Input error, please enter number only');
      continue;
    } else if (guess > answer || guess < answer || guess == answer) {
      count++;
    }

    // todo call doGuess
    isCorrect = doGuess(guess, answer, count);
    // print('your input is $input');

  } //while(guess != answer);
  while (!isCorrect);
}

bool doGuess(int guess, int answer, int count) {
  if (guess == answer) {
    print('→ $answer is CORRECT! 🖤, total guesses: $count');
    return true;
  } else if (guess > answer) {
    print('→ $guess TOO HIGH! ▲');
    return false;
  } else {
    print('→ $guess TOO LOW! ▼');
    return false;
  }
}

//null
// int i;
// int? j = 555; null
// i = 123;
// i = f1();
//int f1(){
// return 5;
//}

// var i = 123;//integer literal
// var s = "สวัสดี $i";

// if(kDebugMode) {
// print(s);
// }

//var r = Random();

//List myList = [ 1, 2, 3]; List literal
