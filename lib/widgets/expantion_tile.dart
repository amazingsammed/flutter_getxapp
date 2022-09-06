import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_doc/models/doc_model.dart';
import '../pages/pageview.dart';
import 'ktext_widget.dart';

class KExpansionTile extends StatelessWidget {
  final DocGroup docs;
  const KExpansionTile({Key? key, required this.docs}) : super(key: key);

  _buildlisttile() {
    List<Widget> doclist = [];
    for (var element in docs.doc) {
      doclist.add(Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => KPageview(docs: element));
            },
            child: Card(
              color: Colors.purple.shade800,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                trailing: const Icon(Icons.chevron_right_sharp),
                title: KText(element.filename),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ));
    }
    return Column(
      children: doclist,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 17),
      child: ExpansionTile(
        iconColor: Colors.white,
        collapsedBackgroundColor: Colors.purple,
        backgroundColor: Colors.purple,
        leading: docs.lead,
        title: KText(docs.title),
        children: [
          _buildlisttile(),
        ],
      ),
    );
  }
}
