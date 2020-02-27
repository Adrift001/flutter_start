main(List<String> args) {

}
//dart中没有关键字定义接口
// 默认情况所有的类都是隐式接口
// 当将一个类作为接口使用时,必须实现接口的所有方法.
class Runner {

    void running() {

    }
}

mixin Flyer {
    void flying() {

    }
}

class Superman implements Runner, Flyer {
  @override
  void flying() {
    // TODO: implement flying
  }

  @override
  void running() {
    // TODO: implement running
  }
}

//使用mixin, with可以不用实现
class Man with Runner, Flyer {

}