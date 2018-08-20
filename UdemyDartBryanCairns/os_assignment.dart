import 'dart:io';

main(List<String> arguments) {

  if(Platform.isWindows) print('Windows');
  if(Platform.isLinux) print('Linux');
  if(Platform.isMacOS) print('Mac');
  if(Platform.isAndroid) print('Android');
  if(Platform.isIOS) print('IOS');
  if(Platform.isFuchsia) print('Fuchsia');

  print(Platform.environment['PATH']);
}