import 'dart:io';

main(List<String> arguments) {

//  String path = '/';
//  Directory dir = new Directory(path);
//
//  if(dir.existsSync()) {
//    print('exists');
//  }
//  else {
//    print('not found');
//  }
//
//  Directory dirTemp = Directory.systemTemp.createTempSync();
//
//  print(dirTemp.path);

//  if(dir.existsSync()) {
//    print('Removing ${dir.path}');
//    dir.deleteSync();
//  }
//  else {
//    print('Could not find ${dir.path}');
//  }

  Directory dir = Directory.current;
  print(dir.path);

  List<FileSystemEntity> list = dir.listSync(recursive: true);
  print('Entries in list: ${list.length}');

  list.forEach((FileSystemEntity value){

    FileStat stat = value.statSync();
    print('Path: ${ value.path}');
    print('Type: ${stat.type}');
    print('Changed: ${stat.changed}');
    print('Modified: ${stat.modified}');
    print('Accessed: ${stat.accessed}');
    print('Mode: ${stat.mode}');
    print('Size: ${stat.size}');
    print('');

  });


}