import 'package:flutter/material.dart';
import 'package:sgt_app/constants/color_constants.dart';

class PostDetailPage extends StatefulWidget {
  final String url;

  const PostDetailPage({required this.url});

  @override
  State<StatefulWidget> createState() {
    return _PostDetailPageState();
  }
}

class _PostDetailPageState extends State<PostDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ดูภาพเต็ม ๆ หน่อยจ้า',
          style: TextStyle(
            fontFamily: 'Kanit-Regular',
            fontSize: 24.0,
            color: ColorConstants.bondiBlueColor,
          ),
        ),
        brightness: Brightness.dark,
        backgroundColor: ColorConstants.lotionGrayColor,
        iconTheme: const IconThemeData(
          color: ColorConstants.philippineGrayColor
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: Colors.black,
        child: Hero(
          tag: 'dash',
          child: SizedBox(
            child: Image.network(
              widget.url,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
