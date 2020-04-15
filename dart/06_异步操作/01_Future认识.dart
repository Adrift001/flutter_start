import 'dart:io';

main(List<String> args) {
  print("main start");
  var future = requestData();
  future.then((String value){
    print(value);
  }).catchError((Exception ex) {
    print(ex.toString());
  }).whenComplete((){
    print("代码执行完成!");
  });
  print("main end");
}

Future<String> requestData() {
  return Future((){
    sleep(Duration(seconds: 5));
    throw Exception("抛出异常");
    return "Hello world";
  });
}