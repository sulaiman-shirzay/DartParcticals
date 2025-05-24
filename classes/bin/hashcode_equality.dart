import 'dart:math';

void main(List<String> args) {
  var book1 = Book(title: "1984", author: "George Orwell");
  var book2 = Book(title: "1984", author: "George Orwell");
  var book3 = Book(title: "Animal Farm", author: "George Orwell");

  print(book1 == book2);
  print(book1 == book3);

  print(book1.hashCode == book2.hashCode);
  print(book1.hashCode == book3.hashCode);

  book3.title = "1984";
  print(book1 == book3);
}

class Book {
  String _title;
  String _author;

  Book({required String title, required String author})
    : _title = title,
      _author = author;

  set title(String value) => _title = value;
  set author(String value) => _author = value;

  String get title => _title;
  String get author => _author;

  @override
  bool operator ==(Object other) {
    return other is Book && other.title == title && other.author == author;
  }

  @override
  int get hashCode => title.hashCode ^ author.hashCode;
}
