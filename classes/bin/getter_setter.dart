void main(List<String> args) {
  var speedCalc = SpeedCalc();
  speedCalc.distance = 10;
  speedCalc.time = 2;

  print("Distance: ${speedCalc.distance}");
  print("Time: ${speedCalc.time}");
  print("Speed: ${speedCalc.speed}");
}

class SpeedCalc {
  num _distance = 0;
  num _time = 1;

  num get speed => _distance / _time;

  set distance(num d) {
    if (d < 0) throw ArgumentError("Distance must be positive.");
    _distance = d;
  }

  set time(num t) {
    if (t <= 0) throw ArgumentError("Time must be greater than 0.");
    _time = t;
  }

  num get distance => _distance;
  num get time => _time;
}
