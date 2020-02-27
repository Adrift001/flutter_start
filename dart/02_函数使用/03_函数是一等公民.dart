main(List<String> args) {
  // 正常函数
  test(bar);
  
  //匿名函数
  test((){
    print("匿名函数被调用");
  });

  //箭头函数: 条件,函数只有一行代码
  test(()=>print("你好,世界"));
}

void test(Function foo) {
  foo();
}

void bar() {
  print("bar 函数被调用");
}