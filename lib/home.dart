import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'initiatives.dart';
import 'sliderItem.dart';
import 'society.dart';
import 'style.dart';

final List<sliderItem> imgList = [
  sliderItem(img: "assets/img/img5.jpg", title: " نماء"),
  sliderItem(img: "assets/img/img2.jpg", title: "اطلق"),
  sliderItem(img: "assets/img/img3.png", title: "المقصف"),
];

class Home extends StatefulWidget {
  static const String id = 'Home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final fifteenAgo = DateTime.now().subtract(Duration(minutes: 10));
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffffcd18),
            title: Text(
              "أخبار",
              style: styleText.pageTitle,
            ),
            elevation: 10,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      child: CarouselSlider(
                        options:
                            CarouselOptions(onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                        items: imgList
                            .map((item) => Column(
                                  children: [
                                    Image.asset(
                                      item.img,
                                      fit: BoxFit.fill,
                                      width: MediaQuery.of(context).size.width,
                                      height: 180,
                                    ),
                                    Container(
                                      color: Colors.grey[200],
                                      width: 1000,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          item.title,
                                          textAlign: TextAlign.right,
                                          style: styleText.extraBoldText,
                                        ),
                                      ),
                                    ),
                                  ],
                                ))
                            .toList(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.map((url) {
                        int index = imgList.indexOf(url);
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? Color.fromRGBO(0, 0, 0, 0.9)
                                : Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                        );
                      }).toList(),
                    ),
                    activtyPart(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "الجمعيات",
                          style: styleText.boldText,
                        ),
                        RaisedButton(
                          child: Text(
                            "المزيد",
                            style: styleText.regularText,
                          ),
                          color: Colors.white,
                          elevation: 0,
                          highlightElevation: 0,
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onPressed: () => {},
                        ),
                      ],
                    ),
                    Container(
                      height: 150,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(context, Society.id),
                            child: Container(
                              width: 150,
                              child: Card(
                                child: index % 2 == 0
                                    ? Image.asset('assets/img/img5.jpg')
                                    : Image.asset('assets/img/img6.jpg'),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "المبادرات",
                        textAlign: TextAlign.right,
                        style: styleText.boldText,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              initiativesCard(),
                              SizedBox(
                                height: 40,
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Drawer Header'),
                  decoration: BoxDecoration(
                    color: Color(0xffFFD918),
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget initiativesCard() {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Initiatives.id),
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffa81950), width: 1),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.all(const Radius.circular(10.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(10),
                    ),
                  ),
                  child: Image.asset('assets/img/img2.jpg'),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'برنامج اطلق',
                      style: styleText.boldText,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Expanded(
                      child: Container(
                        width: 250,
                        child: Text(
                            'كثير من المشاريع تموت قبل الاطلاق ومن اهم الاسباب صعوبة الحضور على شريك تتقني ويبقى...المزيد',
                            textAlign: TextAlign.start,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: styleText.extraRegularText),
                      ),
                    ),
                    Text(
                      timeago.format(fifteenAgo),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: styleText.extraRegularText,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget activtyPart() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "نشاطاتي القادمة",
              style: styleText.boldText,
            ),
            RaisedButton(
              onPressed: () => {},
              color: Colors.transparent,
              elevation: 0,
              highlightElevation: 0,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Text(
                'المزيد',
                style: styleText.regularText,
              ),
            ),
          ],
        ),
        initiativesCard(),
      ],
    );
  }
}
