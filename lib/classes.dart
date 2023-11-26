class IndividualBar {
  final int x;
  final double y;

  IndividualBar({
    required this.x,
    required this.y,
  });
}

class BarData {
  final double first;
  final double second;
  final double third;
  final double fourth;
  final double fifth;
  BarData({
    required this.first,
    required this.second,
    required this.third,
    required this.fourth,
    required this.fifth,
  });

  List<IndividualBar> barData = [];

  void initializeBarData() {
    barData = [
      IndividualBar(
        x: 0,
        y: first,
      ),
      IndividualBar(
        x: 0,
        y: second,
      ),
      IndividualBar(
        x: 0,
        y: third,
      ),
      IndividualBar(
        x: 0,
        y: fourth,
      ),
      IndividualBar(
        x: 0,
        y: fifth,
      ),
    ];
  }
}
