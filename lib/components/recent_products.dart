import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/pages/product_details.dart';

class RecentProducts extends StatefulWidget {
  @override
  _RecentProductsState createState() => _RecentProductsState();
}

class _RecentProductsState extends State<RecentProducts> {
  var recent_product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 160,
      "price": 200,
    },
    {
      "name": "Pants 1",
      "picture": "images/products/pants1.jpg",
      "old_price": 300,
      "price": 600,
    },
    {
      "name": "Pant 2",
      "picture": "images/products/pants2.jpeg",
      "old_price": 333,
      "price": 400,
    },
    {
      "name": "Flower Skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 210,
      "price": 430,
    },
    {
      "name": "Pink Skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 420,
      "price": 500,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: recent_product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext conntext, int index) {
        return RecentProduct(
          product_name: recent_product_list[index]['name'],
          product_picture: recent_product_list[index]['picture'],
          product_old_price: recent_product_list[index]['old_price'],
          product_price: recent_product_list[index]['price'],
        );
      },
    );
  }
}

class RecentProduct extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  RecentProduct(
      {this.product_name,
      this.product_picture,
      this.product_old_price,
      this.product_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_price,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              //We gonna pass product details here
                builder: (context) => ProductDetails(
                      product_name: product_name,
                      product_picture: product_picture,
                      product_old_price: product_old_price,
                      product_price: product_price,
                    )
                )
              ),
            child: GridTile(
              footer: Container(
                color: Colors.black54,
                child: ListTile(
                  onTap: () {},
                  leading: Text(
                    product_name,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    "\$$product_price",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  subtitle: Text(
                    "\$$product_old_price",
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(
                product_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
