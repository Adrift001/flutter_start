main(List<String> args) {
  var str1 = "nihao";
  var str2 = "你好";
  var str3 = """

  """;

  //字符串和表达式拼接
  var name = "tom";
  var age = 10;
  var messsage = "name is ${name}, age is ${age}";
  print(messsage);
  print(name.runtimeType);
  print(age.runtimeType);
  //强调: 如果${变量}, 那么{}可以省略, 如果是点表达式不能省
}