import 'dart:ffi';
import 'dart:io';
import 'package:dart_tool/hello.dart';
import 'package:path/path.dart' as path;

void main() {
  final libPath = path.join(Directory.current.path, 'rust_ffi/target/debug/librust_ffi.dylib');  // For MacOS the file extension is .dylib, check the correct file extension for your OS
  final rustLib = DynamicLibrary.open(libPath);
  final hello = Hello(rustLib);
  print(hello.helloFromRust());
}
