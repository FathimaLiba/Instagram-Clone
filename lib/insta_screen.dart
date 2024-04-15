import 'package:flutter/material.dart';
import 'package:instagram_app/add_screen.dart';
import 'package:instagram_app/bio_screen.dart';
import 'package:instagram_app/home_screen.dart';
// ignore: unused_import
import 'package:instagram_app/insta_list.dart';
import 'package:instagram_app/reels_screen.dart';
import 'package:instagram_app/search_screen.dart';

class InstaScreen extends StatefulWidget {
  InstaScreen({super.key});

  @override
  State<InstaScreen> createState() => _InstaScreenState();
}

class _InstaScreenState extends State<InstaScreen> {
  int select_index = 0;

  List<Widget> screenList = [
    HomeScreen(),
    const SearchScreen(),
    const AddScreen(),
    const ReelScreen(),
    BioScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[select_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: select_index,
        iconSize: 25,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/home.png"),
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/search.png"),
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/reels.png"),
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
            label: "",
            icon: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://th.bing.com/th/id/OIP.Nr2ZPJHNM8Q57lmQeEOwuAHaHa?pid=ImgDet&w=182&h=182&c=7"),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            select_index = index;
          });
        },
      ),
    );
  }
}
