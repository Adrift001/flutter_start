import 'dart:isolate';

main(List<String> args) async {
  print("main start");

  // 1. 创建管道
  ReceivePort receivePort = ReceivePort();

  //2. 创建isolate
  Isolate isolate = await Isolate.spawn(foo, receivePort.sendPort);
  receivePort.listen((value){
    print(value);
    receivePort.close();
    isolate.kill();
  });
  //3. 监听管道
  print("main end");
}

void foo(SendPort sendPort) {
  return sendPort.send("Hello World");
}