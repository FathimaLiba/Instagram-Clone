import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_app/insta_list.dart';

class BioScreen extends StatefulWidget {
  BioScreen({super.key});

  @override
  State<BioScreen> createState() => _BioScreenState();
}

class _BioScreenState extends State<BioScreen> with TickerProviderStateMixin {
  late TabController tabController1;
  @override
  void initState() {
    tabController1 = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController1.dispose();
  }

  List<Highlights> highlightList = [
    Highlights(
        highlightName: "travel",
        highlightImg:
            "https://th.bing.com/th/id/OIP.AsauOHsH82_CzmFHN3yW2AHaFj?w=201&h=180&c=7&r=0&o=5&pid=1.7"),
    Highlights(
        highlightName: "Artworks",
        highlightImg:
            "https://th.bing.com/th/id/OIP.77YEQz9b2h6-UAdAzmimbgHaFj?pid=ImgDet&w=182&h=136&c=7"),
    Highlights(
        highlightName: "my pets",
        highlightImg:
            "https://th.bing.com/th/id/OIP._xxFVU7QL12AsTeifbwgoAHaF7?w=191&h=180&c=7&r=0&o=5&pid=1.7"),
    Highlights(
        highlightName: "classy",
        highlightImg:
            "https://th.bing.com/th/id/OIP.ZddAsaQcipBzJ6fuFVl8_QHaE7?w=223&h=180&c=7&r=0&o=5&pid=1.7"),
    Highlights(
        highlightName: "new",
        highlightImg:
            "https://payload.cargocollective.com/1/11/363140/11461401/prt_104x104_1595565638_2x.jpg"),
  ];
  List<BioGrid1> postGridList = [
    BioGrid1(
        postGridImg:
            "https://th.bing.com/th/id/OIP.Qbbd6RDIlHQ8ZKPnOxtjCwAAAA?w=184&h=185&c=7&r=0&o=5&pid=1.7"),
    BioGrid1(
        postGridImg:
            "https://th.bing.com/th/id/OIP.wZDNMVCbiqRl0SYQDxFwRwAAAA?pid=ImgDet&w=182&h=228&c=7"),
    BioGrid1(
        postGridImg:
            "https://th.bing.com/th/id/OIP.wZDNMVCbiqRl0SYQDxFwRwAAAA?pid=ImgDet&w=182&h=228&c=7"),
    BioGrid1(
        postGridImg:
            "https://cdn.confessionsoftheprofessions.com/media/2021/06/workout-routine.jpg"),
    BioGrid1(
        postGridImg:
            "https://th.bing.com/th/id/OIP._xxFVU7QL12AsTeifbwgoAHaF7?w=191&h=180&c=7&r=0&o=5&pid=1.7"),
    BioGrid1(
        postGridImg:
            "https://th.bing.com/th/id/OIP.xTlc2LJkagYZ39LjPBaCyQHaHa?pid=ImgDet&w=182&h=182&c=7"),
  ];
  List<BioGrid2> reelGridList = [
    BioGrid2(
        reelGridImg:
            "https://th.bing.com/th/id/OIP.w1QsvEFN4ICUwfYjdyxe_QHaLH?pid=ImgDet&w=182&h=273&c=7"),
    BioGrid2(
        reelGridImg:
            "https://th.bing.com/th/id/OIP.-k4oy_5fLF3z0PgYWSlzGwAAAA?pid=ImgDet&w=182&h=279&c=7"),
    BioGrid2(
        reelGridImg:
            "https://th.bing.com/th/id/OIP.CfFkuzZu7ndv_aKBpkl1OAHaJp?pid=ImgDet&w=182&h=236&c=7"),
    BioGrid2(
        reelGridImg:
            "https://th.bing.com/th/id/OIP.TCHVdg2oPBmqZJ2KJoklbwHaE1?&w=160&h=240&c=7&pid=ImgDet"),
    BioGrid2(
        reelGridImg:
            "https://th.bing.com/th/id/OIP.OjS1ic41JpMrJoxnIVqgFQHaHa?&w=160&h=240&c=7&pid=ImgDet")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "alexy_wil",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://th.bing.com/th/id/OIP.Nr2ZPJHNM8Q57lmQeEOwuAHaHa?pid=ImgDet&w=182&h=182&c=7"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: BoxShape.circle),
                                  ),
                                  title: const Text("alexy_wilson"),
                                  trailing: const Icon(Icons.signpost),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://payload.cargocollective.com/1/11/363140/11461401/prt_104x104_1595565638_2x.jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: BoxShape.circle),
                                  ),
                                  title: const Text("Add Instagram account"),
                                ),
                              ),
                            ],
                          ),
                        ));
                  });
            },
            icon: const Icon(
              Icons.expand_more_sharp,
              size: 20,
            ),
          ),
          const SizedBox(width: 63),
          const Icon(
            Icons.alternate_email_rounded,
            size: 30,
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      child: const Column(
                        children: [
                          Text(
                            "Create",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          ListTile(
                            leading: Icon(Icons.slideshow),
                            title: Text("Reel"),
                          ),
                          ListTile(
                            leading: Icon(Icons.grid_4x4),
                            title: Text("Post"),
                          ),
                          ListTile(
                            leading: Icon(Icons.add_circle_outline),
                            title: Text("Story"),
                          ),
                          ListTile(
                            leading: Icon(Icons.favorite_sharp),
                            title: Text("Story Highlight"),
                          ),
                          ListTile(
                            leading: Icon(Icons.sensors),
                            title: Text("Live"),
                          ),
                          ListTile(
                            leading: Icon(Icons.auto_fix_high),
                            title: Text("Made for you"),
                          ),
                          ListTile(
                            leading: Icon(Icons.moving),
                            title: Text("Ad"),
                          ),
                        ],
                      ),
                    );
                  });
            },
            icon: const Icon(
              Icons.add_box_outlined,
              size: 27,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.menu_sharp,
            size: 27,
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SafeArea(
          child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            //color: Colors.amber,
            child: Column(
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 18, top: 10, bottom: 8, right: 8),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage(
                            "https://th.bing.com/th/id/OIP.Nr2ZPJHNM8Q57lmQeEOwuAHaHa?pid=ImgDet&w=182&h=182&c=7"),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(13),
                      child: Column(
                        children: [
                          Text(
                            "409",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text("posts")
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(13),
                      child: Column(
                        children: [
                          Text(
                            "407",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text("followers")
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(13),
                      child: Column(
                        children: [
                          Text(
                            "477",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text("following")
                        ],
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Alexy_wilson",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Artist",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      Text("Life is easy.."),
                      Text("athlete @musclebee"),
                      Row(
                        children: [
                          Text("Personalized training"),
                          Text(
                            "...more",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(140, 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor:
                            const Color.fromARGB(239, 255, 247, 247),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Edit profile",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 19, 19, 19)),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(140, 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor:
                            const Color.fromARGB(236, 255, 249, 249),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Share profile",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                    ),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(238, 250, 243, 243),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          minimumSize: const Size(30, 30),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person_add_alt_outlined,
                          color: Colors.black,
                        ),
                        label: const Text("")),
                  ],
                ),
                Container(
                  height: 140,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 20,
                          color: Colors.white,
                          width: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 214, 213, 213),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(1.5),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                highlightList[index]
                                                    .highlightImg,
                                              ),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  highlightList[index].highlightName,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: highlightList.length),
                ),
                Column(
                  children: [
                    TabBar(
                        controller: tabController1,
                        // ignore: prefer_const_constructors
                        indicatorColor: Color.fromARGB(255, 5, 5, 5),
                        tabs: const [
                          Tab(icon: Icon(Icons.grid_on)),
                          Tab(
                            icon: ImageIcon(
                              AssetImage("assets/reels.png"),
                              color: Colors.black,
                            ),
                          ),
                          Tab(
                            icon: Icon(Icons.perm_contact_cal_outlined),
                          )
                        ]),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 800,
                      child: TabBarView(
                        controller: tabController1,
                        children: [
                          CustomGridWidget(postGridList: postGridList),
                          //CustomGridWidget(postGridList: postGridList),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 2,
                                    mainAxisSpacing: 2,
                                    childAspectRatio: 0.5),
                            itemBuilder: (context, index2) {
                              return Container(
                                child: Image.network(
                                  reelGridList[index2].reelGridImg,
                                  fit: BoxFit.fill,
                                ),
                              );
                            },
                            itemCount: reelGridList.length,
                          ),
                          CustomGridWidget(postGridList: postGridList),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Container(
          //   child: const TabBarView(
          //     children: [
          //       Icon(Icons.directions_car),
          //       Icon(Icons.directions_transit),
          //       Icon(Icons.directions_bike),
          //     ],
          //   ),
          // ),
        ],
      )),
    );
  }
}

class CustomGridWidget extends StatelessWidget {
  const CustomGridWidget({
    super.key,
    required this.postGridList,
  });

  final List<BioGrid1> postGridList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 2, crossAxisSpacing: 2),
      itemBuilder: (context, index1) {
        return Container(
          height: 100,
          child: Image.network(
            postGridList[index1].postGridImg,
            fit: BoxFit.fill,
          ),
        );
      },
      itemCount: postGridList.length,
    );
  }
}
