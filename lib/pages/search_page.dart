import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> buttons = [
      "Music",
      "Travel",
      "Decor",
      "Art",
      "Culture",
      "Dance",
      "Play",
      "gift",
      "build",
      "story"
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                contentPadding: EdgeInsets.all(0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
                fillColor: Color.fromRGBO(212, 78, 123, 0.556),
                filled: true,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person_add),
              ),
            ],
          ),
          SliverAppBar(
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    10,
                    (index) => Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: OutlinedButton(
                              onPressed: () {}, child: Text(buttons[index])),
                        )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
