import 'package:flutter/material.dart';
import 'package:socialthon/style.dart';

import 'society.dart';

class Initiatives extends StatefulWidget {
  static const String id = 'initiatives';
  @override
  _InitiativesState createState() => _InitiativesState();
}

class _InitiativesState extends State<Initiatives> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomSheet: Container(
            height: 80,
            color: Color(0xffffcd18).withAlpha(70),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "مجاناً",
                    style: styleText.boldText,
                  ),
                  GestureDetector(
                    onTap: _finish,
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color(0xffffcd18),
                      ),
                      child: Center(
                        child: Text(
                          "تسجيل",
                          style: styleText.regularText,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Color(0xffffcd18),
            title: Text(
              "برنامج أطلق",
              style: styleText.pageTitle,
            ),
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, Society.id),
                      child: Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xffa81950), width: 1),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius:
                              BorderRadius.all(const Radius.circular(10.0)),
                        ),
                        width: MediaQuery.of(context).size.width * 0.80,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "مطلق المبادرة",
                                    style: styleText.extraBoldText,
                                  ),
                                  Text(
                                    "ماجد للتنمية",
                                    style: styleText.boldText,
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
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
                      borderRadius:
                          BorderRadius.all(const Radius.circular(10.0)),
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset("assets/img/img2.jpg"),
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "برنامج أطلق",
                            style: styleText.extraBoldText,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "كثير من المشاريع التقنية تموت قبل الاطلاق و من اهم الاسباب صعوبة الحصول على شريك تق  نيويبقى الحل الوحيد امام رائد الاعمال هو تعلم البرمجة لكن البرمجه مهارة صعبة وليست للجميع. من خلال برنامج اطلق ستتعلم تصميم و تطوير مشروعك بنفسك من خلال ادوات بسيطة تمكنك من اطلاق مشروعك بشكل سريع بدون الحاجة الى خبير تقني.",
                            style: styleText.regularText,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today,
                                size: 16,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "غداً PM4:00 - السبت PM4:00",
                                style: styleText.extraRegularText,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 16,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "جدة - الغرفة التجارية",
                                style: styleText.extraRegularText,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.account_circle,
                                size: 16,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "م. محمد  شلبي",
                                style: styleText.extraRegularText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "مبادرات مشابهة",
                        textAlign: TextAlign.right,
                        style: styleText.boldText,
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 150,
                          child: Card(
                            child: index % 2 == 0
                                ? Image.asset('assets/img/img5.jpg')
                                : Image.asset('assets/img/img6.jpg'),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _finish() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: MediaQuery.of(context).size.width * 0.50,
            height: MediaQuery.of(context).size.height * 0.20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.assignment_turned_in_outlined,
                  size: 100,
                  color: Color(0xff4bad11),
                ),
                Text(
                  'تم حجز الموعد',
                  style: styleText.pageTitle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
