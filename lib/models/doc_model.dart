import 'package:flutter/widgets.dart';

class DocGroup {
  String title;
  Icon lead;
  List<Doc> doc;
  DocGroup({required this.title, required this.lead, required this.doc});
}

class Doc {
  String filename;
  String file;
  Doc({required this.file, required this.filename});
}
