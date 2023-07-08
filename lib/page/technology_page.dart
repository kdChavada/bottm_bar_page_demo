import 'package:flutter/material.dart';

class TechnologyPage extends StatefulWidget {
  const TechnologyPage({
    super.key,
  });

  @override
  State<TechnologyPage> createState() => _TechnologyPageState();
}

class _TechnologyPageState extends State<TechnologyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Technology"),
      ),
      body: const Center(
        child: Text("Technology"),
      ),
    );
  }
}
