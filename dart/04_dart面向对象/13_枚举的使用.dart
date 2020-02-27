main(List<String> args) {
    final color = Colors.red;
    switch (color) {
      case Colors.red:
        print("红");
        break;
      case Colors.blue:
        print("蓝");
        break;
      case Colors.green:
        print("绿");
        break;
    }
    print(Colors.red.index);
}

enum Colors {
  red,
  blue,
  green
}