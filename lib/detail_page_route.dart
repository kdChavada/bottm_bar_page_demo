import 'package:bottm_bar_page_demo/page/home_page.dart';
import 'package:flutter/material.dart';

class DetailRoute extends StatefulWidget {
  const DetailRoute({
    super.key,
  });

  @override
  State<DetailRoute> createState() => _DetailRouteState();
}

class _DetailRouteState extends State<DetailRoute> {

  @override
  void initState() {
    print("State Call");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route for Item'),
      ),
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: Container(
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: const Text("New Page"),
        ),
      ),
    );
  }
}
