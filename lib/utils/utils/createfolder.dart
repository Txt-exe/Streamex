import 'dart:io';
import 'package:path_provider/path_provider.dart';

class AppUtil{

  static createInitFolder() async {

    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;

    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    print(appDocDir.path);

    String myDirectoryName = "skins";
    String relativePath = "$appDocPath/$myDirectoryName";
    Directory myNewDir = await Directory(relativePath).create(recursive: true);

  }


}