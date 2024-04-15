import 'package:flutter/material.dart';
import 'package:instagram_app/insta_list.dart';

class ReelScreen extends StatefulWidget {
  const ReelScreen({super.key});

  @override
  State<ReelScreen> createState() => _ReelScreenState();
}

class _ReelScreenState extends State<ReelScreen> {
  //int select = 0;
  // final List<String> catList = [
  //   "data1",
  //   "data2",
  //   "data3",
  //   "data",
  //   "data",
  //   "data"
  // ];
  List<Reels> reelList = [
    Reels(
        reel:
            "https://th.bing.com/th/id/OIP.iXJydodMgIOSsPI5VtVLOgHaLG?w=184&h=276&c=7&r=0&o=5&pid=1.7"),
    Reels(
        reel:
            "https://th.bing.com/th/id/OIP.iDyaAU_T_XfpY2y0JbBDuwHaJl?w=143&h=186&c=7&r=0&o=5&pid=1.7")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("shahana"),
        // ),
        // body: ListView.builder(
        //   scrollDirection: Axis.horizontal,
        //   itemBuilder: (context, index) {
        //     return Column(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: ElevatedButton(
        //               onPressed: () {
        //                 setState(() {
        //                   select = index;
        //                 });
        //               },
        //               style: ElevatedButton.styleFrom(
        //                   shape: RoundedRectangleBorder(
        //                       borderRadius: BorderRadius.circular(50)),
        //                   backgroundColor: select == index
        //                       ? Colors.black38
        //                       : Color.fromARGB(255, 253, 253, 253)),
        //               child: Text(
        //                 catList[index],
        //                 style: TextStyle(
        //                     color: select == index
        //                         ? Colors.blue
        //                         : Color.fromARGB(255, 59, 31, 5)),
        //               )),
        //         )
        //       ],
        //     );
        //   },
        //   itemCount: 6,
        // ),

        body: SafeArea(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 700,
            width: double.infinity,
            color: Colors.amber,
            child: Image.network(
              reelList[index].reel,
              fit: BoxFit.fill,
            ),
          );
        },
        itemCount: reelList.length,
      ),
    ));
  }
}
