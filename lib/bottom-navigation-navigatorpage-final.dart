import 'package:flutter/material.dart';

import 'detail_page_route.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key, required this.child, required this.navigatorKey});

  final Widget child;
  final GlobalKey navigatorKey;

  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int _currentRoute = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: widget.child,
                centerTitle: true,
              ),
              body: Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListView(
                  children: List.generate(
                    2,
                    (index) {
                      return Card(
                        child: ListTile(
                          leading: const FlutterLogo(),
                          title: Text('${index + 1} Item'),
                          enabled: true,
                          onTap: () {
                            if (_currentRoute != index) {
                              print(_currentRoute);
                            }
                            _currentRoute = index;
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const DetailRoute();
                                },
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
