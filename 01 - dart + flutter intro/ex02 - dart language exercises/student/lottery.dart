// inputs? - two user inputs: number count <int>, upper limit (inclusive)
// outputs? - a series of numbers to a terminal (List<int>, stdout/print)
//    ->
// 1. we're running this directly as a program, so we need a main()
// 2. We need to handle CLI user inputs & outputs, so we need the dart:io module
// 3.
// 4. Somehow, we need to make sure 

import 'dart:io';
import 'dart:math'; // 2.

void main() { // 1.
    // print is equivalent to stdout.writeln and also doesn't require an import to dart:io
    print("Please enter how many lotto numbers are in the series.");
    int count = int.parse(stdin.readLineSync()!); // ! tells compiler
    
    print("What is the largest lotto number (inclusively)?");
    int largestNum = int.parse(stdin.readLineSync()!);

    // 3. number generation logic
    // https://api.dart.dev/dart-core/List/List.filled.html
    List<int> lottoNumbers = List.filled((count), 0);
    Random rng = Random();

    for (int i = 1; i < count; i++) {
      // get some sort of random value, and throw it in a list
      // https://api.dart.dev/dart-math/Random-Class.html
      int value = rng.nextInt(largestNum) + 1;

      lottoNumbers[i] = value;
    }

    print(lottoNumbers.join(' '));
}