import 'package:flutter/material.dart';
import 'package:get411_ass1/bar_graph.dart';

List<int> numbers = [
  17,
  23,
  44,
  38,
  29,
  20,
  18,
  52,
  28,
  28,
  54,
  32,
  33,
  27,
  18,
  22,
  38,
  36,
  38,
  29,
  45,
  32,
  33,
  43,
  48,
  24,
  18,
  21,
  30,
  54,
];
List y_axis = [4.40, 2.50, 42.42, 22.50, 34.1];
void main() {
  runApp(const MyApp());
}

void frequncyHistogram(List<int> list) {
  list.sort();
  int maxValue = list.last;
  int minValue = list.first;
  print('The minimum data entry is $minValue');
  print('The maximum data entry is $maxValue');

  // print(
  // "Class         Frequency, f     Class Boundaries\n-----------   ---------         ------------\n${minValue - 0.5} - ${(minValue + 7) + 0.5}      ${noOfOcc(17, 24)}\n${(minValue + 8) - 0.5} - ${(minValue + 7 + 8) + 0.5}      ${noOfOcc(25, 32)}\n${(minValue + 16) - 0.5} - ${(minValue + 7 + 16) + 0.5}      ${noOfOcc(33, 40)}\n${(minValue + 24) - 0.5} - ${(minValue + 7 + 24) + 0.5}      ${noOfOcc(41, 48)}\n${(minValue + 32) - 0.5} - ${(minValue + 7 + 32) + 0.5}      ${noOfOcc(49, 56)}\n         __________\n         Total = 30");
  // print(
  //     "Class         Frequency, f     Class Boundaries\n-----------   ---------         ------------\n$minValue - ${minValue + 7}      ${noOfOcc(17, 24)}    ${minValue - 0.5} - ${(minValue + 7) + 0.5}
  //     \n${minValue + 8} - ${minValue + 7 + 8}      ${noOfOcc(25, 32)}
  //     \n${minValue + 16} - ${minValue + 7 + 16}      ${noOfOcc(33, 40)}
  //     \n${minValue + 24} - ${minValue + 7 + 24}      ${noOfOcc(41, 48)}
  //     \n${minValue + 32} - ${minValue + 7 + 32}      ${noOfOcc(49, 56)}
  //     \n         __________\n         Total = 30");
  // ````````\n\n\n${(minValue + 16) - 0.5} - ${(minValue + 7 + 16) + 0.5}\n${(minValue + 24) - 0.5} - ${(minValue + 7 + 24) + 0.5}\n${(minValue + 32) - 0.5} - ${(minValue + 7 + 32) + 0.5}");
}

int noOfOcc(int lowerLimit, int upperLimit) {
  List limits = [];
  int freq = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] <= upperLimit && numbers[i] >= lowerLimit) {
      limits.add(numbers[i]);
      freq = limits.length;
    }
  }
  return freq;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
