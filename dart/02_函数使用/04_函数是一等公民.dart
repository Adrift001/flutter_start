main(List<String> args) {
  test((num1, num2){
    return num1 + num2;
  });

  var demo1 = demo();
  print(demo1(20, 30));
}

void test(Calculate cal) {
  cal(20, 30);
}

typedef Calculate = int Function(int num1, int num2);

Calculate demo() {
  return (num1, num2) {
    return num1 * num2;
  };
}