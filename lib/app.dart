import 'package:flutter/material.dart';
import 'package:myapp/screens/location_detail/location_detail.dart';
import 'constants.dart';
import 'package:myapp/screens/locations/locations.dart';

// main app
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      home: LocationDetail(),
//      initialRoute: '/',
//      Navigator.pushName(context, '/second');
//      routes: {
//        //        when we navigate to the '/' route, build the firstScreen
//        '/': (context) => FirstScreen(),
//        // when we navigate to the 'second' route, build the SecondScreen
//        '/second': (context) => SecondScreen(),
//      },
      onGenerateRoute: _routes(),
      theme:_theme(),
    );
  }

  ThemeData _theme(){
    return ThemeData(
        appBarTheme: AppBarTheme(
            textTheme: TextTheme(
                title: AppBarTextStyle
            )
        ),
        textTheme: TextTheme(
            title: TitleTextStyle,
            subtitle: SubTitleTextStyle,
            caption: CaptionTextStyle,
            body1: Body1Style,
        )
    );
  }
  RouteFactory _routes(){
//    this returns a function of routes that take a settings argument
    return (settings) {

      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;

      switch(settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }

      return MaterialPageRoute(builder: (BuildContext context) => screen);

    };
  }
}