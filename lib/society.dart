import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'initiatives.dart';
import 'style.dart';

class Society extends StatefulWidget {
  static const String id = 'society';
  @override
  _SocietyState createState() => _SocietyState();
}

class _SocietyState extends State<Society> {
  final fifteenAgo = DateTime.now().subtract(Duration(minutes: 10));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ماجد للتنمية",
          style: styleText.pageTitle,
        ),
        elevation: 0,
        backgroundColor: Color(0xffffcd18),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 30),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Image.asset("assets/img/img4.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ماجد الخيرية للتنمية",
                      style: styleText.extraBoldText,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 20,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "السعودية، الرياض",
                          style: styleText.extraRegularText,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.people_alt_sharp,
                          size: 20,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "1,200  عضو",
                          style: styleText.extraRegularText,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.calendar_today,
                          size: 20,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "من عام 2006",
                          style: styleText.extraRegularText,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "كثير من المشاريع التقنية تموت قبل الاطلاق و من اهم الاسباب صعوبة الحصول على شريك تق  نيويبقى الحل الوحيد امام رائد الاعمال هو تعلم البرمجة لكن البرمجه مهارة صعبة وليست للجميع. من خلال برنامج اطلق ستتعلم تصميم و تطوير مشروعك بنفسك من خلال ادوات بسيطة تمكنك من اطلاق مشروعك بشكل سريع بدون الحاجة الى خبير تقني.",
                      style: styleText.regularText,
                    ),
                    Divider(
                      thickness: 1,
                      height: 40,
                    ),
                    innitativesPart(),
                    supportedPart(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget innitativesPart() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "المبادرات",
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

  Widget supportedPart() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "الداعمين",
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

  Widget initiativesCard() {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Initiatives.id),
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffa81950), width: 0.4),
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
}
