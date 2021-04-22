import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart'
    show kTransparentImage;
import 'package:cached_network_image/cached_network_image.dart';

class ImageExample extends StatefulWidget {
  @override
  _ImageExampleState createState() => _ImageExampleState();
}

class _ImageExampleState extends State<ImageExample> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(
            "1. Image from asset",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Card(
          child: Image.asset("assets/images/image01.jpg"),
        ),
        ListTile(
          title: Text(
            "2. Image from url",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Card(
          child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  "https://blog.glugmvit.com/assets/images/first_app/flutter.jpg"),
        ),
        Divider(),
        ListTile(
          title: Text(
            "3. Cached network image",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          height: 300,
          child: CachedNetworkImage(
            imageUrl: "https://blog.glugmvit.com/assets/images/first_app/flutter.jpg",
            placeholder: (context, url) => Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error_outline),
          ),
        ),
        Divider(),
        ListTile(
          title: Text("4. Load Gif from asset",
            style: TextStyle(fontWeight: FontWeight.w600),),
        ),
        Card(
          child: Image.asset("assets/images/flutter_logo_leg.gif"),
        ),
      ],
    );
  }
}
