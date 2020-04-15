main(List<String> args) {
  Future.value("哈哈哈").then((value){
    print(value);
  });
  Future.error("错误信息").catchError((error){
    print(error);
  });
  Future<String>.delayed(Duration(seconds: 3), (){
    return "Hello Flutter";
  }).then((value){
    print(value);
    return "Hello world";
  }).then((value){
    print(value);
  });
}