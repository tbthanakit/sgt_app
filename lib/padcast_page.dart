import 'package:flutter/material.dart';
import 'package:sgt_app/post_detail_page.dart';
import 'constants/color_constants.dart';
import 'model/podcast_model.dart';

class PodcastPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PodcastPagePageState();
  }
}

class _PodcastPagePageState extends State<PodcastPage> {
  final List<PodcastModel> podcasts = [
    PodcastModel(
        "https://www.sgtyouth.com/images/poscast1.jpg",
        "June 28, 2021",
        "Happy Voice Podcast Series 4 : EP.12 จุดไฟสำหรับคน Burnout",
        "6:42",
        "https://youtu.be/AhELSEMQjn8"),
    PodcastModel(
        "https://www.sgtyouth.com/images/podcast2.jpg",
        "June 12, 2021",
        "Happy Voice Podcast Series 3 : EP.10 ครอบครัว จุดเริ่มต้นของความหวังและกำลังใจ ",
        "8:55",
        "https://youtu.be/uIP-dI_Ka3A"),
    PodcastModel(
        "https://www.sgtyouth.com/images/podcast3.jpg",
        "March 17, 2021",
        "Happy Voice Podcast Series 3 : EP.09 ลุกขึ้นจากความเจ็บปวด ",
        "5:42",
        "https://youtu.be/0mC-noPKo1Q"),
    PodcastModel(
        "https://www.sgtyouth.com/images/poscast1.jpg",
        "June 28, 2021",
        "Happy Voice Podcast Series 4 : EP.12 จุดไฟสำหรับคน Burnout",
        "6:42",
        "https://youtu.be/AhELSEMQjn8"),
    PodcastModel(
        "https://www.sgtyouth.com/images/podcast2.jpg",
        "June 12, 2021",
        "Happy Voice Podcast Series 3 : EP.10 ครอบครัว จุดเริ่มต้นของความหวังและกำลังใจ ",
        "8:55",
        "https://youtu.be/uIP-dI_Ka3A"),
    PodcastModel(
        "https://www.sgtyouth.com/images/podcast3.jpg",
        "March 17, 2021",
        "Happy Voice Podcast Series 3 : EP.09 ลุกขึ้นจากความเจ็บปวด ",
        "5:42",
        "https://youtu.be/0mC-noPKo1Q"),
    PodcastModel(
        "https://www.sgtyouth.com/images/poscast1.jpg",
        "June 28, 2021",
        "Happy Voice Podcast Series 4 : EP.12 จุดไฟสำหรับคน Burnout",
        "6:42",
        "https://youtu.be/AhELSEMQjn8"),
    PodcastModel(
        "https://www.sgtyouth.com/images/podcast2.jpg",
        "June 12, 2021",
        "Happy Voice Podcast Series 3 : EP.10 ครอบครัว จุดเริ่มต้นของความหวังและกำลังใจ ",
        "8:55",
        "https://youtu.be/uIP-dI_Ka3A"),
    PodcastModel(
        "https://www.sgtyouth.com/images/podcast3.jpg",
        "March 17, 2021",
        "Happy Voice Podcast Series 3 : EP.09 ลุกขึ้นจากความเจ็บปวด ",
        "5:42",
        "https://youtu.be/0mC-noPKo1Q"),
    PodcastModel(
        "https://www.sgtyouth.com/images/poscast1.jpg",
        "June 28, 2021",
        "Happy Voice Podcast Series 4 : EP.12 จุดไฟสำหรับคน Burnout",
        "6:42",
        "https://youtu.be/AhELSEMQjn8"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _podcastAppBar(),
        body: CustomScrollView(
          slivers: _podcast(),
        ));
  }

  AppBar _podcastAppBar() {
    return AppBar(
      title: const Text('พอดคาสท์'),
      titleTextStyle: const TextStyle(
          fontFamily: 'Kanit-Medium',
          fontSize: 24,
          color: ColorConstants.bondiBlueColor),
      centerTitle: false,
      brightness: Brightness.dark,
      backgroundColor: ColorConstants.lotionGrayColor,
    );
  }

  List<Widget> _podcast() {
    return [
      SliverList(
        delegate: SliverChildListDelegate(podcasts.map((item) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ).copyWith(bottom: 0),
            child: Card(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return PostDetailPage(url: item.imageUrl);
                      },
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Hero(
                      tag: 'dash',
                      child: Image.network(
                        item.imageUrl,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      child: Row(
                        children: [
                          Text(
                            item.postedDate,
                            style: const TextStyle(
                                color: ColorConstants.philippineGrayColor,
                                fontFamily: 'Kanit-Regular',
                                fontSize: 14.0),
                          ),
                          const Spacer(),
                          Text(
                            item.minute + " นาที",
                            style: const TextStyle(
                                color: ColorConstants.philippineGrayColor,
                                fontFamily: 'Kanit-Regular',
                                fontSize: 14.0),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        bottom: 16,
                      ),
                      child: Text(
                        item.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Kanit-Regular',
                          fontSize: 18.0,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList()),
      )
    ];
  }
}
