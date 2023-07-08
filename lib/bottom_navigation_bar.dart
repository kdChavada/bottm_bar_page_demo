import 'package:bottm_bar_page_demo/page/business_page.dart';
import 'package:bottm_bar_page_demo/page/education_page.dart';
import 'package:bottm_bar_page_demo/page/home_page.dart';
import 'package:bottm_bar_page_demo/page/technology_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  final CupertinoTabController _controller = CupertinoTabController(initialIndex: 0);
  DateTime timeBackButtonPressed = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final dif = DateTime.now().difference(timeBackButtonPressed);
        final isClose = dif >= const Duration(seconds: 2);
        timeBackButtonPressed = DateTime.now();
        if (isClose) {
          print("Yes");
          return false;
        } else {
          return true;
        }
      },
      child: CupertinoTabScaffold(
          controller: _controller,
          tabBar: CupertinoTabBar(
            backgroundColor: Colors.white,
            activeColor: Colors.blue,
            inactiveColor: Colors.black,
            height: 70,
            onTap: (index) {},
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.business), label: "Business"),
              BottomNavigationBarItem(icon: Icon(Icons.computer), label: "Technology"),
              BottomNavigationBarItem(icon: Icon(Icons.book), label: "Education"),
            ],
          ),
          restorationId: "",
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  /*onGenerateRoute: (RouteSettings settings) {
                    switch (settings.name) {
                      case '/':
                        return CupertinoPageRoute(builder: (_) => const HomePage(), settings: settings);
                      case '/':
                        return CupertinoPageRoute(builder: (_) => const BusinessPage(), settings: settings);
                    }
                    return null;
                  },*/
                  builder: (context) {
                    return const CupertinoPageScaffold(child: HomePage());
                  },
                );

              case 1:
                return CupertinoTabView(
                  builder: (context) {
                    return const CupertinoPageScaffold(child: BusinessPage());
                  },
                );

              case 2:
                return CupertinoTabView(
                  builder: (context) {
                    return const CupertinoPageScaffold(child: TechnologyPage());
                  },
                );

              case 3:
                return CupertinoTabView(
                  builder: (context) {
                    return const CupertinoPageScaffold(child: EducationPage());
                  },
                );
            }
            return Container();
          }),
    );

    /*return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: _pageIndex == 0
            ? HomePage(
                selectedIndex: _pageIndex,
              )
            : _pageIndex == 1
                ? EducationPage(
                    selectedIndex: _pageIndex,
                  )
                : _pageIndex == 2
                    ? BusinessPage(
                        selectedIndex: _pageIndex,
                      )
                    : _pageIndex == 3
                        ? TechnologyPage(
                            selectedIndex: _pageIndex,
                          )
                        : SettingPage(selectedIndex: _pageIndex),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 75,
        padding: const EdgeInsets.only(left: 23, right: 23, top: 20),
        width: w,
        decoration:   BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _pageIndex = 0;
                });
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, size: 30),
                  Text("Home"),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _pageIndex = 1;
                });
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.book, size: 30),
                  Text("Education"),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _pageIndex = 2;
                });
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.business, size: 30),
                  Text("Business"),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _pageIndex = 3;
                });
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.computer, size: 30),
                  Text("Technology"),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _pageIndex = 4;
                });
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings, size: 30),
                  Text("Setting"),
                ],
              ),
            ),
          ],
        ),
      ),
    );*/
  }
}
