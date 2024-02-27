import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              scrollPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              style: const TextStyle(
                color: Colors.white,
              ),
              autocorrect: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(40),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(40),
                ),
                hintText: "    Enter your query",
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 158, 158, 158),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_upward),
              onPressed: () => null,
            ),
          ),
        ],
      ),
    );
  }
}
