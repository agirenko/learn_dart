class Location {
  num lat, lng; // instance variables or member variables
  Location(this.lat, this.lng);
}

class ElevatedLocation extends Location {
  num elevation;
  ElevatedLocation(num lat, num lng, this.elevation): super(lat, lng);

  @override
  String toString() {
    return 'ElevatedLocation{elevation: $elevation} {lat: $lat} {lng: $lng}';
  }

}

main() {
  //var loc = Location(1.0, 1.0);
  var elevated = ElevatedLocation(23.89, -234.98, 100.0);
  print("location = ${elevated.lat} ${elevated.lng} ${elevated.elevation}");
  Object object = Object();
  print(object);
  print(elevated);
}