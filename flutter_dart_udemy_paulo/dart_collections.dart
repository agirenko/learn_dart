main() {
  List<dynamic> a = [1, 2, 3, "b"];
  var c = {'e': 'b', 'c': 'd', 1: 'f'};
  var list = [10, 2, 13, 24, 100];
  var listAsMap = list.asMap();
  print(listAsMap);
  print(list.length);
  print(list[0]);
  print(a);
  print(c);
}
