import 'package:flutter/material.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key, required});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        centerTitle: true,
      ),
      body: const Center(child: Text("Education")),
    );
  }
}
