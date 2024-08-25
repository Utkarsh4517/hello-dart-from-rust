import 'dart:ffi';
import 'package:ffi/ffi.dart';

typedef HelloRustFunc = Pointer<Utf8> Function();
typedef HelloRust = Pointer<Utf8> Function();

class Hello {
  final DynamicLibrary _rustLib;

  Hello(this._rustLib);

  String helloFromRust() {
    final HelloRust helloRust = _rustLib.lookup<NativeFunction<HelloRustFunc>>('hello_from_rust').asFunction();
    return helloRust().toDartString();
  }
}
