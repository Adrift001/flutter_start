import 'dart:io';

main(List<String> args) {
  print("main start");
  Future((){
    sleep(Duration(seconds: 3));
    return "第一次结果";
  }).then((value){
    print(value);
    sleep(Duration(seconds: 3));
    return "第二次结果";
  }).then((value){
    print(value);
    sleep(Duration(seconds: 3));
    return "第三次结果";
  }).then((value){
    print(value);
  }).catchError((error){
    print(error);
  });
  print("main end");
}