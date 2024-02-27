import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  const TextBox({super.key, required this.query});

  final String query;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 80, 82, 93),
      ),
      //68,69,78,255
      child: Text(
        query,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Color.fromARGB(255, 215, 215, 215)), //rgba(199,195,200,255)
      ),
    );
  }
}
