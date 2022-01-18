import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
List<String> imgList=[
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bura"),
      ),
      body: Center(
        child: Expanded(
          child: ListView.builder(
            itemCount: imgList.length,
              itemBuilder: (context,index){
                return   Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.pink
                            )
                          ),
                            height: 200,
                            width: 200,
                            child: Image.asset
                              (imgList[index],
                              fit: BoxFit.cover,)),
                      ),
                    ],
                  ),
                );
              }
          ),
        )
      )
    );
  }
}