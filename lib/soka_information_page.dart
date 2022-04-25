import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sgt_app/model/important_day_model.dart';
import 'package:sgt_app/post_detail_page.dart';
import 'constants/color_constants.dart';
import 'model/buddhism_message_model.dart';

class SokaInformationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SokaInformationPageState();
  }
}

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

final List<BuddhismMessageModel> buddhismMessages = [
  BuddhismMessageModel(
    "https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80",
    "การทำวาระ",
    "หมายถึง การเพียรพยายามปฏิบัติ ดังนั้น การทำให้ไม่ให้ขาดในทุกวัน",
  ),
  BuddhismMessageModel(
    "https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80",
    "นัม เมียวโฮ เร็งเง เคียว",
    "หมายถึง การเพียรพยายามปฏิบัติ ดังนั้น การทำให้ไม่ให้ขาดในทุกวัน",
  ),
  BuddhismMessageModel(
    "https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80",
    "การทำวาระ",
    "หมายถึง การเพียรพยายามปฏิบัติ ดังนั้น การทำให้ไม่ให้ขาดในทุกวัน",
  ),
  BuddhismMessageModel(
    "https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80",
    "นัม เมียวโฮ เร็งเง เคียว",
    "หมายถึง การเพียรพยายามปฏิบัติ ดังนั้น การทำให้ไม่ให้ขาดในทุกวัน",
  ),
  BuddhismMessageModel(
    "https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80",
    "การทำวาระ",
    "หมายถึง การเพียรพยายามปฏิบัติ ดังนั้น การทำให้ไม่ให้ขาดในทุกวัน",
  )
];

class _SokaInformationPageState extends State<SokaInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _sokaInformationAppBar(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _importantDays(),
            ),
            SliverToBoxAdapter(
              child: _buddhismTopics(),
            ),
            _buddhismList()
          ],
        ));
  }

  AppBar _sokaInformationAppBar() {
    return AppBar(
      title: const Text('ข้อมูลสมาคม'),
      titleTextStyle: const TextStyle(
          fontFamily: 'Kanit-Medium',
          fontSize: 24,
          color: ColorConstants.bondiBlueColor),
      centerTitle: false,
      brightness: Brightness.dark,
      backgroundColor: ColorConstants.lotionGrayColor,
    );
  }

  Widget _importantDays() {
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
              "วันสำคัญสมาคม",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Kanit-Regular',
                  fontSize: 24.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: _importantDaysCarousel(),
          ),
        ],
      ),
    );
  }

  Widget _importantDaysCarousel() {
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
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      item.imageUrl,
                      fit: BoxFit.cover,
                      width: 1000.0,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          item.date,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Kanit-Regular',
                            fontSize: 28.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ))
      .toList();

  Widget _buddhismTopics() {
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
              "พุทธธรรม",
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

  Widget _buddhismList() {
    return SliverList(
      delegate: SliverChildListDelegate(buddhismMessages.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
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
            child: Row(
              children: [
                Hero(
                  tag: 'dash',
                  child: Image.network(
                    item.imageUrl,
                    height: 80,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Kanit-Medium',
                            fontSize: 18.0,
                          ),
                          maxLines: 1,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          item.description,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Kanit-Regular',
                            fontSize: 16.0,
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList()),
    );
  }
}
