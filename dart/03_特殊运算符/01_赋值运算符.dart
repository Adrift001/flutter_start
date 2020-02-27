main(List<String> args) {
  //??= 当原来变量有值,不执行
  //当原来变量为null,就把值赋给name
  var name = "name";
  name ??= "tom";
}