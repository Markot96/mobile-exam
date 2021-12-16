import 'dart:collection';
import 'dart:math';

class GameLogic {
  HashSet<int> specialCards = HashSet();
  bool checkingRemainingElements(int count) {
    return specialCards.length == count;
  }

  void generateNewSpecial(int count) {
    var rnd = Random();
    var number;
    do {
      number = rnd.nextInt(count);
    } while (specialCards.contains(number));
    currentIndex = number;
  }

  var currentIndex;
}