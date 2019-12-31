import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/model/location.dart';
import 'package:myapp/model/location_fact.dart';
import 'package:myapp/widgets/image_banner.dart';
import 'package:myapp/widgets/location_tile.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
//    find location by ID
    final location = Location.fetchOne(_locationID);

    return Scaffold(
      appBar: AppBar(
//        title: Text('Location Detail', style: Theme.of(context).appBarTheme.textTheme.title,),
        title: Text(location.name, style: Theme.of(context).appBarTheme.textTheme.title,),
      ),
      body: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//          ImageBanner("assets/images/kiyomizu-dera.jpg"),
          ImageBanner(assetPath: location.imagePath,),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
            child: LocationTile(location: location,),
          )
//          TextSection("Summary1", 'qwqe tyioplkjhgfdsazxcvbnm, kdfsjk dasjkadsj asdj fasdkljf asjfajf adfjsd'),
//          TextSection("Summary2", 'qwqetyioplkjhgfdsazxcvbnm, jasdjklasd asdj aksdjfklasdj fdlsjak sjjdfa;sdj'),
//          TextSection("Summary3", 'qwqetyioplkjhgfdsazxcvbnm, dsajkld sadkljf adsja fjajflkadfjjkaf dkjajfakj'),
        ]..addAll(textSections(location)),
      ),
    )
    );
  }

//  this function takes a location object and returns a textSection widget,
//  by passing details of location object and into the textsection widget.

  List<Widget> textSections(Location location){
    return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}