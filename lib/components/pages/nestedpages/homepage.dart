import 'package:bims/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('categories', style: TextStyle(fontWeight: FontWeight.w100,fontSize: 15, color: Colors.white),)),
        backgroundColor: const Color.fromRGBO(26, 43, 88, 1),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: const  EdgeInsets.all(8.0),
            child: IconButton(icon: const Icon(Icons.search),
            onPressed: (){},),
          )
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
                color: Color.fromRGBO(55, 47, 152, 0.69),
                borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                 child: Text(
                  'username',
                    style: TextStyle(
                    color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
          ],
       ),       
    );
  }
}