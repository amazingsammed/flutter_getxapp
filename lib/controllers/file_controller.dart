import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../models/doc_model.dart';

class Openfile extends GetxController {
  Future<String> openfile(Doc docs) async {
    final String file = await rootBundle.loadString(docs.file);
    return file;
  }
}
