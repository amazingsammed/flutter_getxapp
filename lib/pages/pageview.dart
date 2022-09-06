import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:get_doc/controllers/file_controller.dart';

import '../controllers/file_controller.dart';
import '../models/doc_model.dart';
import 'markdowncodecolor.dart';

class KPageview extends StatelessWidget {
  final Openfile controller = Get.put(Openfile());
  final Doc docs;
  KPageview({Key? key, required this.docs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black.withOpacity(0.2),
          centerTitle: true,
          title: Text(docs.filename),
          //foregroundColor: Colors.black,
        ),
        body: FutureBuilder(
            future: controller.openfile(docs),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.hasData) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Markdown(
                    builders: {
                      'code': CodeElementBuilder(),
                    },
                    styleSheet: MarkdownStyleSheet(
                      p: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    data: snapshot.data.toString(),
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
