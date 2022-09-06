import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_doc/models/model_object.dart';
import 'package:get_doc/pages/pageview.dart';
import 'package:get_doc/widgets/expantion_tile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('flu-md/background.png'),
                  fit: BoxFit.cover)),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'Get x'.toUpperCase(),
                  style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => KPageview(docs: doc1));
                },
                child: Container(
                  height: MediaQuery.of(context).size.width >= 600 ? 500 : 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('flu-md/sam.png'),
                          fit: BoxFit.cover),
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Text(
                          'introduction to Getx'.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              KExpansionTile(docs: docs[0]),
              const SizedBox(
                height: 10,
              ),
              KExpansionTile(docs: docs[1]),
              const SizedBox(
                height: 10,
              ),
              KExpansionTile(docs: docs[2]),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'By Trust'.toUpperCase(),
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const Center(
                child: Text(
                  'Version: 1.2',
                  style: TextStyle(fontSize: 13, color: Colors.white24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
