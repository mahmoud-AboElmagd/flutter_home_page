import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  bool isEn = false;
  List pages = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffCE2FF3),Color(0xffCE2FF3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SizedBox(
            height: 100,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xff222222),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = 0;
                        });
                      },
                      child: Center(
                        child: _buildCircleIcon(
                          icon: const Icon(
                            Icons.house,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                      child: Center(
                        child: _buildCircleIcon(
                          icon: const Icon(
                            Icons.mic,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = 2;
                        });
                      },
                      child: Center(
                        child: _buildCircleIcon(
                          icon: const Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff302ade), Color(0xffCE2FF3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: pages[currentIndex],
        ),
      ),
    );
  }
}

_buildCircleIcon({
  required Icon icon,
}) {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(5),
      child: Center(
        child: icon,
      ),
    ),
  );
}
