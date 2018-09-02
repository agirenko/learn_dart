main() {
  // adding keys
  var colors = new Map();
  colors['blue'] = false;
  colors['red'] = true;
  colors[1] = 'abc';
  print(colors);

  // curly bracket literals can also be used:
  //var shapes = {'square': false, 'triangle': true, circle: 'z'}; // "Getter not found:" 'circle'. Dart Map is not JS object
  var shapes = {'square': false, 'triangle': true};
  print(shapes);

  // keys and values can be iterated.
  // HashMap iterates in arbitrary order, while LinkedHashMap, and SplayTreeMap
  // iterate in the order they were inserted into the map.
  for (var key in shapes.keys) print(key);
  for (var value in shapes.values) print(value);
}
