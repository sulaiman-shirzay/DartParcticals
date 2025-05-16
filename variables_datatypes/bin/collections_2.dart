void list() {
  ////////////////////////////////////////////////////////////
  // ? LIST<TYPE>
  List<num> mixedNumbers = [2, 12.2, 13];
  print(mixedNumbers);

  var lines = ["hello", "how are you"];
  lines.insert(0, "dear");
  lines.add("I'm");
  lines.addAll(["fine", "what about"]);
  lines.remove("hello");
  print(lines.contains("fu*k you"));
  print(lines.isEmpty);
  print(lines);

  var numbers = [2, 2, 4];
  int sum = 0;
  numbers.forEach((num) => sum += num);
  print(numbers.where((n) => n > 2));
  print(sum);
}

// ? SET<TYPE>
void set() {
  Set<String> myTexts = {"this ", "is", "awesome"};
  print(myTexts);
}

// ? MAP<X, Y>
void map() {
  Map<String, double> ObjectLike = {"Height": 180.3};
  print(ObjectLike);
}
