import 'package:flutter/material.dart';
// import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String firstButtonName = "Press";
  String secondButtonName = "Press Me";
  int changingIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("WELCOME!!")),
        ),
        body: Center(
          child: changingIndex == 0
              ? Container(
                  width: double.infinity,
                  // height: double.infinity,
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          onPrimary: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            firstButtonName = "Pressed";
                          });
                        },
                        child: Text(firstButtonName),
                      ),
                      ElevatedButton(
                        // style: const ButtonStyle( backgroundColor: Colors.yellow),
                        onPressed: () {
                          setState(() {
                            secondButtonName = "I'm Pressed";
                          });
                        },
                        child: Text(secondButtonName),
                      ),
                    ],
                  ),
                )
              : Image.asset("assets/images/nature.jpeg"),
          // : Image.network(
          //     'https://picsum.photos/id/1074/400/400',
          //   ),
          // : Image.file(
          //     File('/storage/emulated/0/oats.jpeg'),
          //   ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                // color: Color.fromARGB(255, 194, 26, 236),
                size: 30,
              ),
              label: "HOME",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  // color: Color.fromARGB(255, 240, 151, 181),
                  size: 30,
                ),
                label: "PROFILE")
          ],
          currentIndex: changingIndex,
          onTap: (int index) {
            setState(() {
              changingIndex = index;
            });
          },
        ),
      ),
    );
  }
}
