import 'package:bims/components/gridItem.dart';
import 'package:bims/components/pages/nestedpages/house.dart';
import 'package:bims/components/pages/nestedpages/population.dart';
import 'package:bims/components/pages/nestedpages/youth.dart';
import 'package:bims/components/pages/nestedpages/zone.dart';
import 'package:flutter/material.dart';

class MyGridBox extends StatefulWidget {
  const MyGridBox({Key? key}) : super(key: key);

  @override
  State<MyGridBox> createState() => _MyGridBoxState();
}

class _MyGridBoxState extends State<MyGridBox> {
  final List<Color> _colors = [
    Color.fromRGBO(240, 69, 151, 1),
    Color.fromRGBO(93, 231, 45, 1),
    Color.fromRGBO(244, 212, 45, 1),
    Color.fromRGBO(40, 125, 105, 1),
  ];

  final List<String> _text = ['House', 'Population', 'Youth', 'Zone'];

  final List<Widget> _pages = [
    HousePage(),
    PopulationPage(),
    YouthPage(),
    ZonePage()
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });

    if (index < _pages.length) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => _pages[index]),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      height: 260,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        children: List.generate(
          _colors.length,
          (index) => GestureDetector(
            onTap: () {
              _selectPage(index);
            },
            child: GridItem(
              color: _colors[index],
              text: _text[index],
            ),
          ),
        ),
      ),
    );
  }
}
