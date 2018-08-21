import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/export.dart';
//import 'package:pointycastle/key_generators/rsa_key_generator.dart';


main(List<String> arguments) {

  Digest sha256 = new SHA256Digest();
  // or
  KeyDerivator derivator = new PBKDF2KeyDerivator(
      new HMac(new SHA1Digest(), 64));


  String password = 'password';

  var salt = createUint8ListFromString('salt');
//  var pkcs = new KeyDerivator("SHA-1/HMAC/PBKDF2");
  var params = new Pbkdf2Parameters(salt, 100, 16);
//
  derivator.init(params);

  var key = derivator.process(createUint8ListFromString(password));

  display('Key value', key);
}

Uint8List createUint8ListFromString(String value) => new Uint8List.fromList(utf8.encode(value));

void display(String title, Uint8List value) {
  print(title);
  print(value);
  print(base64.encode(value));
  print('');
}