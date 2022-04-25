import 'package:carousel_slider/carousel_slider.dart';
import 'package:sgt_app/post_detail_page.dart';
import 'package:flutter/material.dart';

import 'constants/color_constants.dart';
import 'model/important_day_model.dart';

class FeedsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FeedsPageState();
  }
}

final List<String> facebookContents = [
  "https://www.sgtyouth.com/images/fb1.jpeg",
  "https://www.sgtyouth.com/images/fb2.jpeg",
  "https://www.sgtyouth.com/images/fb3.jpeg",
  "https://www.sgtyouth.com/images/fb4.jpeg",
  "https://www.sgtyouth.com/images/fb5.jpeg",
  "https://www.sgtyouth.com/images/fb6.jpeg",
  "https://www.sgtyouth.com/images/fb7.jpeg",
  "https://www.sgtyouth.com/images/fb8.jpeg",
  "https://www.sgtyouth.com/images/fb9.jpeg",
  "https://www.sgtyouth.com/images/fb10.jpeg",
  "https://www.sgtyouth.com/images/fb11.jpeg",
  "https://www.sgtyouth.com/images/fb12.jpeg",
  "https://www.sgtyouth.com/images/fb13.jpeg",
  "https://www.sgtyouth.com/images/fb14.jpeg",
  "https://www.sgtyouth.com/images/fb15.jpeg",
  "https://www.sgtyouth.com/images/fb16.jpeg",
  "https://www.sgtyouth.com/images/fb17.jpeg",
  "https://www.sgtyouth.com/images/fb18.jpeg",
  "https://www.sgtyouth.com/images/fb19.jpeg",
  "https://www.sgtyouth.com/images/fb20.jpeg",
  "https://www.sgtyouth.com/images/fb21.jpeg",
  "https://www.sgtyouth.com/images/fb22.jpeg",
  "https://www.sgtyouth.com/images/fb23.jpeg",
  "https://www.sgtyouth.com/images/fb24.jpeg",
  "https://www.sgtyouth.com/images/fb25.jpeg",
  "https://www.sgtyouth.com/images/fb26.jpeg",
  "https://www.sgtyouth.com/images/fb27.jpeg",
  "https://www.sgtyouth.com/images/fb28.jpeg",
  "https://www.sgtyouth.com/images/fb29.jpeg",
  "https://www.sgtyouth.com/images/fb30.jpeg"
];

final List<ImportantDayModel> importantDays = [
  ImportantDayModel(
    "https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80",
    "1.26",
    "informationUrl",
  ),
  ImportantDayModel(
    "https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80",
    "3.16",
    "informationUrl",
  ),
  ImportantDayModel(
    "https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80",
    "5.3",
    "informationUrl",
  ),
  ImportantDayModel(
    "https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80",
    "7.3",
    "informationUrl",
  ),
  ImportantDayModel(
    "https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80",
    "7.11",
    "informationUrl",
  ),
  ImportantDayModel(
    "https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80",
    "7.19",
    "informationUrl",
  ),
  ImportantDayModel(
    "https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80",
    "9.8",
    "informationUrl",
  ),
  ImportantDayModel(
    "https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80",
    "11.18",
    "informationUrl",
  )
];

class _FeedsPageState extends State<FeedsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _sokaGakkaiThailandAppBar(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _header(),
            ),
            SliverToBoxAdapter(
              child: _facebookContentTopics(),
            ),
            _facebookContent()
          ],
        ));
  }

  Widget _header() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ).copyWith(bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Text(
              "สวัสดี ทีบี",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Kanit-Medium',
                  fontSize: 28.0),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Text(
              "วันนี้คุณมียอดไดโมขุ 4,800 คำ (เก่งจัง)",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Kanit-Regular',
                  fontSize: 20.0),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: _headerCarousel(),
          ),
        ],
      ),
    );
  }

  Widget _headerCarousel() {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: false,
        aspectRatio: 2.0,
        pageSnapping: true,
        enlargeCenterPage: true,
      ),
      items: imageSliders,
    );
  }

  final List<Widget> imageSliders = importantDays
      .map((item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Image.network(
                item.imageUrl,
                fit: BoxFit.cover,
                width: 1000.0,
              ),
            ),
          ))
      .toList();

  Widget _facebookContentTopics() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ).copyWith(bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Text(
              "ข่าวสารสมาคม",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Kanit-Regular',
                  fontSize: 24.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _facebookContent() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return PostDetailPage(url: facebookContents[index]);
                      },
                    ),
                  );
                },
                child: Image.network(
                  facebookContents[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ));
        },
        childCount: facebookContents.length,
      ),
    );
  }

  AppBar _sokaGakkaiThailandAppBar() {
    return AppBar(
      title: const Text('SGT'),
      titleTextStyle: const TextStyle(
          fontFamily: 'Kanit-Medium',
          fontSize: 28.0,
          color: ColorConstants.bondiBlueColor),
      centerTitle: false,
      backgroundColor: ColorConstants.lotionGrayColor,
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Icon(Icons.notifications),
        ),
      ],
      actionsIconTheme:
          const IconThemeData(color: ColorConstants.altoGrayColor),
    );
  }
}
