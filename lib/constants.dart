import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


// Styles
// all style constants go in this column

const LargeTextSize = 22.0;
const MediumTextSize = 16.0;
const SmallTextSize = 12.0;

const String FontNameDefault = 'Montserrat';

const Color TextColorDark = Colors.black;
const Color TextColorLight = Colors.white;
const Color TextColorAccent = Colors.red;
const Color TextColorFaint = Color.fromRGBO(125, 125, 125,1.0);

const DefaultPaddingHorizontal = 12.0;

const AppBarTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: Colors.white
);

const TitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: LargeTextSize,
  color: Colors.black
);

const SubTitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: TextColorAccent,
);

const CaptionTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: SmallTextSize,
  color: TextColorDark,
);

const Body1Style = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize:  MediumTextSize,
  color: Colors.black,
);


// Route
// all route constants go in here

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';