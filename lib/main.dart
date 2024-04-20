import 'package:flutter/material.dart';
import 'package:insta_app/pages/home_page.dart';
import 'package:insta_app/pages/search_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage == 1 ? SearchPage() : HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 0;
                  });
                },
                icon: Icon(
                  Icons.home,
                  color: currentPage == 0
                      ? Color.fromRGBO(232, 23, 75, 0.944)
                      : Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 1;
                  });
                },
                icon: Icon(
                  Icons.search,
                  color: currentPage == 1
                      ? Color.fromRGBO(232, 23, 75, 0.944)
                      : Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 2;
                  });
                },
                icon: Icon(
                  Icons.ondemand_video,
                  color: currentPage == 2
                      ? Color.fromRGBO(232, 23, 75, 0.944)
                      : Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 3;
                  });
                },
                icon: Icon(
                  Icons.card_travel,
                  color: currentPage == 3
                      ? Color.fromRGBO(232, 23, 75, 0.944)
                      : Color.fromRGBO(40, 40, 40, 1),
                )),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 4;
                  });
                },
                icon: Icon(
                  Icons.person,
                  color: currentPage == 4
                      ? Color.fromRGBO(232, 23, 75, 0.944)
                      : Color.fromRGBO(40, 40, 40, 1),
                )),
          ],
        ),
      ),
    );
  }
}
