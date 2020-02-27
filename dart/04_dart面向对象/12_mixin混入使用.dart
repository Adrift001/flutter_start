mixin Flyer {
    void flying() {

    }
}

class Runner {
    void running() {

    }
}

//使用mixin, with可以不用实现
class Man with Runner, Flyer {

}