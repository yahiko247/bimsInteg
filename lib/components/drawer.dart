import 'package:flutter/material.dart';

class ComponentDrawer extends StatelessWidget {
  const ComponentDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer( 
      child: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration( color: Color.fromRGBO(26, 43, 88,1)),
              child: Center(child: Text('B I M S', style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
            ),
          ListTile(
              title: Text('Brg Certificate'),
              contentPadding: EdgeInsets.only(left: 70),
            ),
          ListTile(
            title: Text('Brg Officials'),
            contentPadding: EdgeInsets.only(left: 70),
          ),
          ListTile(
            title: Text('Brg Indigency'),
            contentPadding: EdgeInsets.only(left: 70),
          )
          ],
        ),
      ),
    );
  }
}