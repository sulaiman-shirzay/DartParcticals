void main(List<String> args) {
  Human().explainType();
  Human().explainTalk();
}

class Mamalia {
  const Mamalia();
}

class Human extends Mamalia with CanTalk {
  const Human();
  void explainType() {
    print("$runtimeType is Mamalia");
  }
}

mixin CanTalk on Mamalia {
  void explainTalk() {
    print("$runtimeType can Talk");
  }
}
