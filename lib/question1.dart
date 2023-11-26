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

void main() {
  frequncyDistribution(numbers);
}

void frequncyDistribution(List<int> list) {
  list.sort();
  int maxValue = list.last;
  int minValue = list.first;
  print('The minimum data entry is $minValue');
  print('The maximum data entry is $maxValue');
  print(
      'The class width is = ($maxValue - $minValue) / 5 = ${(maxValue - minValue) / 5}');
  print('Round 7.4 up to 8');
  print(
      'The lower class limits are $minValue, ${minValue + 8}, ${minValue + 16}, ${minValue + 24}, ${minValue + 32}');
  print(
      'The upper class limits are ${minValue + 7}, ${minValue + 7 + 8}, ${minValue + 7 + 16}, ${minValue + 7 + 24}, ${minValue + 7 + 32}');
  print(
      "Class     Frequency, f\n-----     ---------\n$minValue - ${minValue + 7}      ${noOfOcc(17, 24)}\n${minValue + 8} - ${minValue + 7 + 8}      ${noOfOcc(25, 32)}\n${minValue + 16} - ${minValue + 7 + 16}      ${noOfOcc(33, 40)}\n${minValue + 24} - ${minValue + 7 + 24}      ${noOfOcc(41, 48)}\n${minValue + 32} - ${minValue + 7 + 32}      ${noOfOcc(49, 56)}\n         __________\n         Total = 30");
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
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }