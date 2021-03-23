import 'dart:convert';
import 'package:crypto/crypto.dart';

class CryptoHelper {
  ///this class contains helper code of using
  ///crypto pub package for encrypting strings
  final Hmac _Hmac256Instanse;
  final Sha256 sh256Instance;

  CryptoHelper(String key):
  _Hmac256Instanse = new Hmac(sha256, utf8.encode(key));
  
  Digest encryptHmac256(String key, String message){
    return _Hmac256Instanse.convert(utf8.encode(message));
  }

  String decryptHmac256(String key, Digest message){
    return utf8.decode(_Hmac256Instanse.bind(message));
  } 
}