//ignore_for_file: avoid_print
import 'dart:io';

import 'package:hello/game.dart';
import 'package:hello/hello.dart';

void main(){
  var game = Game();
  late GuessResult guessResult;

  var isCorrect = 0;

  do {
    stdout.write('Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync(); //dart infer type

    if (input == null) {
      print('Error input is NULL');
      continue;
    }
    var guess = int.tryParse(input); //if not number print error, only number

    if (guess == null) {
      continue;
    }
    GuessResult = game.doGuess(guess);
    isCorrect = game.doGuess(guess);
    if(isCorrect == 0){

    }else if(isCorrect==1){

    }else{
  print('object')
    }

  }
  while (isCorrect!=GuessResult.correct);
}
