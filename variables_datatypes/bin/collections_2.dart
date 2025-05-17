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
  print(
    lines.contains("fu*k you"),
  ); // Note: Contains profanity; consider replacing.
  print(lines.isEmpty);
  print(lines);

  var numbers = [2, 2, 4];
  int sum = 0;
  for (var num in numbers) {
    sum += num;
  }
  print(
    numbers.where((n) => n > 2).toList(),
  ); // `.where()` returns an iterable, use `.toList()` for better display
  print(sum);
}

// ? SET<TYPE>
void setExample() {
  // Renamed from 'set' to avoid conflict with Dart's reserved word 'set'
  Set<String> myTexts = {"this ", "is", "awesome"};
  print(myTexts);
}

// ? MAP<X, Y>
void mapExample() {
  // Renamed from 'map' to avoid conflict with Dart's built-in 'map' function
  Map<String, double> objectLike = {"Height": 180.3};
  print(objectLike); // Fixed variable name (was incorrectly capitalized)
}
