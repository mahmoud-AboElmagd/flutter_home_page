import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  bool loading = false;

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
                color: Color(0xeeeeeeee),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(24),
                  decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  width: MediaQuery.of(context).size.width - 100,
                  height: 40,
                  child: Container(
                    height: 30,
                      margin: const EdgeInsets.only(top: 10, left: 12, right: 12),
                      child: const Image(
                        height: 10,
                        image: AssetImage('assets/images/sound_wave.png'),
                        fit: BoxFit.fitWidth,
                      ),),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24),
                  decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  width: MediaQuery.of(context).size.width - 100,
                  height: 100,
                  child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 12, right: 12),
                      child: const Text("hello")),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 24, left: 24, top: 10),
                  decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  width: MediaQuery.of(context).size.width - 100,
                  height: 100,
                  child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 12, right: 12),
                      child: const Text("hello")),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
