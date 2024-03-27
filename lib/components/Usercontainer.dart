import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.red),
          ), // Page 1
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.green),
          ), // Page 2
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.blue),
          ), // Page 3
        ],
      ),
    );
  }
}
