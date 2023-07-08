import 'package:flutter/material.dart';

class BusinessPage extends StatefulWidget {
  const BusinessPage({
    super.key,
  });

  @override
  State<BusinessPage> createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Business"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Business"),
      ),
    );
  }
}
