import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categoria(
            image_location: 'assets/cats/tshirt.png',
            image_caption: 'shirt',
          ),
          Categoria(
            image_location: 'assets/cats/dress.png',
            image_caption: 'dress',
          ),
          Categoria(
            image_location: 'assets/cats/jeans.png',
            image_caption: 'jeans',
          ),
          Categoria(
            image_location: 'assets/cats/formal.png',
            image_caption: 'formal',
          ),
          Categoria(
            image_location: 'assets/cats/informal.png',
            image_caption: 'informal',
          ),
        ],
      ),
    );
  }
}

class Categoria extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Categoria({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 80,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
