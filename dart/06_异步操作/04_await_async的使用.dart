import 'dart:io';

main(List<String> args) {

  print("main start");
  requestData().then((value){
    print(value);
  });
  print("main end");

}
/**
 * await必须在async函数中
 * async返回结果必须是一个Future
 */
Future<String> requestData() async {
  await sleep(Duration(seconds: 5));
  return "Hello world";
}