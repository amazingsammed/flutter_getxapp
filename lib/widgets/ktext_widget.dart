import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  final String data;
  const KText(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(color: Colors.white),
    );
  }
}
