import 'package:bims/components/Usercontainer.dart';
import 'package:bims/components/drawer.dart';
import 'package:bims/components/gridbox.dart';
import 'package:bims/components/sample.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'categories',
            style: TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(26, 43, 88, 1),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ),
        ],
      ),
      drawer: const ComponentDrawer(),
      backgroundColor: const Color.fromRGBO(26, 43, 88, 1),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 88,
              width: 350,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(55, 47, 152, 0.69),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Image.asset('assets/avatar.png'),
                  const Text(
                    'username',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            child: const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Hello User',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          const SizedBox(height: 10),
          MyGridBox(),
          const MyPageView()
        ],
      ),
    );
  }
}
