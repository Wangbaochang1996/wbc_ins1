import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "assets/images/po1.jpg",
    "assets/images/po2.jpg",
    "assets/images/po3.jpg",
    "assets/images/po4.jpg",
    "assets/images/po5.jpg",
    "assets/images/po6.jpg",
    "assets/images/po7.jpg",
    "assets/images/po8.jpg",
  ];
  List<String> posts = [
    "assets/images/post1.jpg",
    "assets/images/post2.jpg",
    "assets/images/post3.jpg",
    "assets/images/post4.jpg",
    "assets/images/post5.jpg",
    "assets/images/post6.jpg",
    "assets/images/post7.jpg",
    "assets/images/post8.jpg",
  ];
  Future<void> onRefresh() async {
    await Future.delayed(
      Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/images.jpg",
          width: 150,
          height: 90,
          fit: BoxFit.cover,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_bubble_outline),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Container(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 21,
                            backgroundImage:
                                const AssetImage("assets/images/logo6.jpg"),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(profileImages[index]),
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Profile Name",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(),
              Column(
                children: List.generate(
                  8,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //Header post
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(18),
                            child: CircleAvatar(
                              radius: 21,
                              backgroundImage:
                                  const AssetImage("assets/images/logo6.jpg"),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage(profileImages[index]),
                              ),
                            ),
                          ),
                          Text("Profile Name"),
                          Spacer(),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert))
                        ],
                      ),
                      //Image Post
                      Image.asset(posts[index]),
                      //Footer Post
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.chat_bubble_outline)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.label_outline)),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bookmark_border)),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.all(13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(text: "Liked By"),
                                    TextSpan(
                                        text: " Profile Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: " and"),
                                    TextSpan(
                                        text: " Others",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: "Profile Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                      text:
                                          " This is a beautiful picture! very good! haha",
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "View all 12 comments",
                                style: TextStyle(color: Colors.black38),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
