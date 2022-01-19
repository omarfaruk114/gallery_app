import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Expanded(
        child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1,
          children: oldimageList.map((item){
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                  height: containerHeight,
                  width: containerWidth,
                  child: Image.asset(item,fit: BoxFit.cover,)),
            );
          }).toList(),
        ),
      ),
    );
  }
}
List <String> oldimageList = [
  "assets/image/img001.jpg",
  "assets/image/img002.jpg",
  "assets/image/img003.jpg",
  "assets/image/img004.jpg",
  "assets/image/img005.jpg",
  "assets/image/img006.jpg",
  "assets/image/img007.jpg",
  "assets/image/img008.jpg",
  "assets/image/img009.jpg",
];
double containerHeight = 90;
double containerWidth = 90;