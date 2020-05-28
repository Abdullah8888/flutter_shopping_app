import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'shirt',
          ),

          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'dress',
          ),

          Category(
            image_location: 'images/cats/shoe.png',
            image_caption: 'shoe',
          ),

          Category(
            image_location: 'images/cats/informal.png',
            image_caption: 'informal',
          ),

          Category(
            image_location: 'images/cats/jeans.png',
            image_caption: 'jeans',
          ),

          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'dress',
          ),

          Category(
            image_location: 'images/cats/accessories.png',
            image_caption: 'accessories',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  // gonna create a constructor
  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 110.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Text(image_caption, textAlign: TextAlign.center, softWrap: true,),
          ),
        ),
      ),
    );
  }
}
