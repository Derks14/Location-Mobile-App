import 'package:flutter/material.dart';
import 'package:myapp/model/location.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/widgets/image_banner.dart';
import 'package:myapp/widgets/tile_overlay.dart';

class Locations extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    final locations = Location.fetchAll();
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView.builder(
//        do this instead of putting item raw to list to save memory if items are
//      many
        itemCount: locations.length,
        itemBuilder: (context,index) => _itembuilder(context, locations[index]),
    )
//              Text(location.name)).toList(),

    );
  }

  void _onLocationsTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,arguments: {'id': locationID});
  }

  Widget _itembuilder( BuildContext context, Location location){
    return GestureDetector(
      child: Container(
      height: 245.0,
        child: Stack(
        children: <Widget>[
          ImageBanner(assetPath: location.imagePath, height: 245.0,),
          TileOverlay(location)
          ],
        ),
      ),
      onTap: () => _onLocationsTap(context, location.id),
    );
  }
}