import 'package:gpt/text_box.dart';
import 'package:gpt/text_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 70, 68, 83),
          foregroundColor: Colors.white,
          title: const Center(
            child: Text(
              'ChatGPT',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 70, 68, 83), Color(0xFF353440)],
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Image.asset(
                    'assets/chat-gpt.png',
                    color: Colors.white,
                    height: 35,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Welcome to \nChatGpt',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Ask anything, gpt your answer',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  const SizedBox(height: 120),
                  const Icon(Icons.sunny, color: Colors.white),
                  const Text(
                    'Examples',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  const SizedBox(height: 30),
                  const TextBox(
                    query: 'Explain quantum computing in simple terms',
                  ),
                  const TextBox(
                    query:
                        'Got any creative ideas for a 10 year old\'s birthday',
                  ),
                  const TextBox(
                    query: 'How do i make http request in javascript',
                  ),
                  const SizedBox(height: 100),
                  TextInput(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
