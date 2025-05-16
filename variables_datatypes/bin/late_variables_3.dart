void lateFunction() {
  late int newValue1 = newValue();
  print("this is normal print statement");
  print(newValue1);
}

int newValue() {
  print("heere is the late print statement");
  return 10;
}
