import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_app/insta_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Story> storyList = [
    Story(
        img:
            "https://th.bing.com/th/id/OIP.Nr2ZPJHNM8Q57lmQeEOwuAHaHa?pid=ImgDet&w=182&h=182&c=7",
        name: "my story"),
    Story(
        img:
            "https://th.bing.com/th/id/OIP.9pOYxe_eETYvG4gbMm6kdQHaHa?pid=ImgDet&w=182&h=182&c=7",
        name: "ramshi"),
    Story(
        img:
            "https://th.bing.com/th/id/OIP.p9giF5ETuq4btkYU3TP0lQHaHa?w=214&h=213&c=7&r=0&o=5&pid=1.7",
        name: "rani_ji"),
    Story(
        img:
            "https://th.bing.com/th/id/OIP.ZWvqzhhNuvoSH1szcfTkfQAAAA?pid=ImgDet&w=182&h=182&c=7",
        name: "johny"),
    Story(
        img:
            "https://th.bing.com/th/id/OIP.IkLYdobJ8Ux8CAX0AfuXIQHaHa?w=219&h=219&c=7&r=0&o=5&pid=1.7",
        name: "tovi_no"),
    Story(
        img:
            "https://th.bing.com/th/id/OIP.Tcto6zxgdHc9VThwZx_oiQHaIe?w=155&h=180&c=7&r=0&o=5&pid=1.7",
        name: "liba_pg"),
    Story(
        img:
            "https://th.bing.com/th/id/OIP.hoH-R8-iJf0JzVgnyPSL6QHaHa?pid=ImgDet&w=182&h=182&c=7",
        name: "jack"),
  ];

  List<Post> postList = [
    Post(
        username: "24onlive",
        postImg: [
          "https://i.ytimg.com/vi/FdyXaQH930I/maxresdefault.jpg",
          "https://th.bing.com/th/id/OIF.IKmsFNPxFyVYamXGLi8ZPw?w=298&h=180&c=7&r=0&o=5&pid=1.7",
          "https://cdn.dealeraccelerate.com/gaa/42/23727/208275/1920x1440/1969-chevrolet-camaro-z28-clone"
        ],
        likes: "20,876 likes",
        info: "24onlive Covid the pandemic",
        comment: "View all 303 comments",
        date: "2 hours ago",
        isliked: false,
        userImg:
            "https://th.bing.com/th/id/OIP.L16s1sRHtmihLWc9rRQEzwAAAA?w=249&h=180&c=7&r=0&o=5&pid=1.7"),
    Post(
        username: "tovi_no",
        postImg: [
          "https://cdn.dealeraccelerate.com/gaa/42/23727/208275/1920x1440/1969-chevrolet-camaro-z28-clone",
        ],
        likes: "2569 likes",
        info: "new one..yellow and black design #carlove#cars",
        comment: "View all 3 comments",
        date: "5 hours ago",
        isliked: false,
        userImg:
            "https://th.bing.com/th/id/OIP.IkLYdobJ8Ux8CAX0AfuXIQHaHa?w=219&h=219&c=7&r=0&o=5&pid=1.7"),
    Post(
        username: "wanderer_in",
        postImg: [
          "https://th.bing.com/th?id=OIP.CWbRbbsmcHUqDmtqGYiZ9wHaEo&w=316&h=197&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2",
        ],
        likes: "82,254 likes",
        info:
            "nature love,the best medicine for you..beautiful landscapes#love#drive",
        comment: "View all 30 comments",
        date: "2 days ago",
        isliked: false,
        userImg:
            "https://th.bing.com/th/id/OIP.76nwhDdqqzMCdAOp2Ar2egHaFj?rs=1&pid=ImgDetMain"),
    Post(
        username: "Amazon",
        postImg: [
          "https://i.etsystatic.com/9885812/r/il/1cf255/1499892842/il_fullxfull.1499892842_fan2.jpg",
        ],
        likes: "2,80,927 likes",
        info: '''The new Arrival 'pearl earrings' 
        Shop now...''',
        comment: "View all 940 comments",
        date: "4 days ago",
        isliked: false,
        userImg:
            "https://th.bing.com/th/id/OIP.K8VMIOWK6yFKZ_pBI8WA1QAAAA?w=330&h=113&c=7&r=0&o=5&pid=1.7"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          "https://fontmeme.com/images/instagram-new-logo.png",
          height: 50,
          width: 170,
          fit: BoxFit.fill,
        ),
        titleSpacing: 5,
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.expand_more_sharp),
              itemBuilder: (context) => [
                    const PopupMenuItem(
                        child: Row(
                      children: [Text("Following "), Icon(Icons.access_alarm)],
                    )),
                    const PopupMenuItem(
                        child: Row(
                      children: [Text("Favorites "), Icon(Icons.access_alarm)],
                    ))
                  ]),
          // GestureDetector(
          //   onTap: () {
          //     DragDownDetails;
          //   },
          //   child: const Padding(
          //     padding: EdgeInsets.all(0.0),
          //     child: Icon(Icons.expand_more_sharp),
          //   ),
          // ),
          const SizedBox(
            width: 120,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
            iconSize: 26,
          ),
          const SizedBox(
            width: 15,
          ),
          Image.asset(
            "assets/messenger.png",
            width: 25,
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
                height: 120,
                color: const Color.fromARGB(255, 254, 254, 255),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index2) {
                    return index2 == 0
                        ? Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 12, top: 8, bottom: 8),
                            child: Stack(
                              children: [
                                Container(
                                  height: 85,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(colors: [
                                      Color.fromARGB(255, 241, 43, 225),
                                      Color.fromARGB(255, 253, 189, 49),
                                      Color.fromARGB(255, 236, 91, 134),
                                    ]),
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                storyList[index2].img,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                    top: 60,
                                    left: 60,
                                    child: CircleAvatar(
                                      radius: 11,
                                      backgroundColor: Colors.blueAccent,
                                      child: Icon(
                                        Icons.add,
                                        color: Color.fromARGB(
                                          255,
                                          252,
                                          252,
                                          252,
                                        ),
                                        size: 18,
                                      ),
                                    )),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      storyList[index2].name,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(
                                right: 12, top: 8, bottom: 8),
                            child: Stack(
                              children: [
                                Container(
                                  height: 85,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(colors: [
                                      Color.fromARGB(255, 241, 43, 225),
                                      Color.fromARGB(255, 253, 189, 49),
                                      Color.fromARGB(255, 236, 91, 134),
                                    ]),
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                storyList[index2].img,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 24, top: 9),
                                    child: Text(
                                      storyList[index2].name,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                  },
                  itemCount: storyList.length,
                )),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index3) {
                return Container(
                  color: const Color.fromARGB(255, 240, 233, 233),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(255, 241, 43, 225),
                              Color.fromARGB(255, 253, 189, 49),
                              Color.fromARGB(255, 236, 91, 134),
                              //Colors.yellow,
                            ]),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(1.5),
                            child: Container(
                              //height: 70,
                              // width: 70,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        postList[index3].userImg,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          postList[index3].username,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(Icons.more_vert_outlined),
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 250,
                          enableInfiniteScroll: false,
                          viewportFraction: 1,
                          //aspectRatio: 16 / 9,
                          initialPage: 0,
                        ),
                        items: postList[index3].postImg.map((e) {
                          return Builder(builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              child: Image.network(
                                "$e",
                                fit: BoxFit.fill,
                              ),
                            );
                          });
                        }).toList(),
                      ),
                      // Image.network(
                      //   postList[index3].postImg,
                      //   height: 300,
                      //   width: double.infinity,
                      //   fit: BoxFit.cover,
                      // ),
                      Row(
                        children: [
                          IconButton(
                              iconSize: 28,
                              onPressed: () {
                                setState(() {
                                  postList[index3].isliked =
                                      !postList[index3].isliked;
                                });
                              },
                              icon: postList[index3].isliked
                                  ? const Icon(Icons.favorite,
                                      color: Colors.red)
                                  : const Icon(
                                      Icons.favorite_border_outlined,
                                      color: Color.fromARGB(255, 24, 24, 24),
                                    )),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/chat.png",
                                height: 28,
                                width: 28,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/send.png",
                                height: 25,
                                width: 25,
                              )),
                          const SizedBox(width: 190),
                          IconButton(
                              iconSize: 28,
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark_border_sharp)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          postList[index3].likes,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(postList[index3].info),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(postList[index3].comment),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(postList[index3].date),
                      ),
                    ],
                  ),
                );
              },
              itemCount: postList.length,
            )
          ],
        ),
      ),
    );
  }
}
