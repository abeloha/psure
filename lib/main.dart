import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:psure/navigation_home_screen.dart';
import 'package:psure/app_theme.dart';
import 'package:psure/util/app_constants.dart';
import 'package:psure/splash_screen.dart';
import 'package:psure/landing/landing_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: AppConstants.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
      ),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/landing':
            return new SplashPageToLandingPageRoute(
                builder: (_) => new LandingScreen(), settings: settings);
        }
        return new SplashPageToLandingPageRoute(
            builder: (_) => new LandingScreen(), settings: settings);
      },
      home: SplashScreen(), //NavigationHomeScreen(),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

class SplashPageToLandingPageRoute<T> extends MaterialPageRoute<T> {
  SplashPageToLandingPageRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Duration get transitionDuration => new Duration(milliseconds: 1500);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.name == '/') return child;

    final curve =
        new CurvedAnimation(parent: animation, curve: Curves.easeInOut);
    return new FadeTransition(opacity: curve, child: child);
  }
}
