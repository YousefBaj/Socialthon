import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:socialthon/society.dart';

import 'home.dart';
import 'initiatives.dart';
import 'splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales,

      initialRoute: splash.id,
      routes: <String, WidgetBuilder>{
        "/": (context) => splash(),
        Home.id: (context) => Home(),
        Initiatives.id: (context) => Initiatives(),
        Society.id: (context) => Society(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
