// ignore_for_file: public_member_api_docs, sort_constructors_first
class Story {
  String img;
  String name;
  Story({
    required this.img,
    required this.name,
  });
}

class Post {
  String username;
  List<String> postImg;
  String likes;
  String info;
  String comment;
  String date;
  String userImg;
  bool isliked;
  Post({
    required this.username,
    required this.postImg,
    required this.likes,
    required this.info,
    required this.comment,
    required this.date,
    required this.userImg,
    required this.isliked,
  });
}

class Highlights {
  String highlightName;
  String highlightImg;
  Highlights({
    required this.highlightName,
    required this.highlightImg,
  });
}

class BioGrid1 {
  String postGridImg;
  BioGrid1({
    required this.postGridImg,
  });
}

class BioGrid2 {
  String reelGridImg;
  BioGrid2({
    required this.reelGridImg,
  });
}

class Reels {
  String reel;
  Reels({
    required this.reel,
  });
}
