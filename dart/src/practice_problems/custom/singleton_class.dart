main() {
  var instance1 = MySingletonClass();
  var instance2 = MySingletonClass();

  print(instance1);
  print(instance2);
  instance1.doSomething();
}

class MySingletonClass {
  MySingletonClass._privateConstructor();

  static final MySingletonClass instance =
      MySingletonClass._privateConstructor();

  factory MySingletonClass() {
    return instance;
  }

  void doSomething() {
    print(":Nice Worker");
  }
}
