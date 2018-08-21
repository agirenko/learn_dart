import 'dart:io';
//import 'package:archive/archive.dart';
import 'package:path/path.dart' as p;
main()  {

}

//main(List<String> arguments) {
//  List files = new List<String>();
//  Directory.current.listSync().forEach((FileSystemEntity fse) {
//    if (fse.statSync().type == FileSystemEntityType.file) files.add(fse.path);
//  });
//
//  String zipFile = '/Volumes/Macintosh HD/Users/alex/d/learnprojs/test_folder/test.zip';
//
//  zip(files, zipFile);
//
//  unzip(zipFile, '/Volumes/Macintosh HD/Users/alex/d/learnprojs/test_folder/decompressed');
//}
//
//void zip(List<String> files, String file) {
//  Archive archive = new Archive();
//
//  files.forEach((String path) {
//    File file = new File(path);
//
//    ArchiveFile archiveFile = new ArchiveFile(
//        p.basename(path), file.lengthSync(), file.readAsBytesSync());
//    archive.addFile(archiveFile);
//  });
//
//  ZipEncoder encoder = new ZipEncoder();
//  File f = new File(file);
//  f.writeAsBytesSync(encoder.encode(archive));
//
//  print('Compressed');
//}
//
//void unzip(String zip, String path) {
//  File file = new File(zip);
//
//  Archive archive = new ZipDecoder().decodeBytes(file.readAsBytesSync());
//
//  archive.forEach((ArchiveFile archiveFile) {
//    File file = new File(path + '/' + archiveFile.name);
//    file.createSync(recursive: true);
//    file.writeAsBytesSync(archiveFile.content);
//  });
//
//  print('Decompressed');
//}
