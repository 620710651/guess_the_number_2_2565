import 'dart:math';

enum GuessResult{
  correct, tooHigh, tooLow
}
class Game {
  final int answer = Random().nextInt(100) + 1;
  int _totalGuess = 0;
  //final int answer;

  //constructor
  //Game() :  answer = Random().nextInt(100) + 1;
  Game() {
    print('Answer is $answer');
  }

  GuessResult doGuess(int guess) {
    _totalGuess++;

    if (guess == answer) {
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.tooHigh;
    } else {
      return GuessResult.tooLow;
    }
  }
  int get totalGuess{
    return
  }
}
