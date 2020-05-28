import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/main.dart';

class ProductDetails extends StatefulWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  //Constructor
  ProductDetails(
      {this.product_name,
      this.product_picture,
      this.product_old_price,
      this.product_price}
    );

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return HomePage();
              })
            );
          },
          child: Text('Shopping App')
          ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search, 
                color: Colors.white), 
              onPressed: null
            ),
        ],
      ),

      //The body
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            color: Colors.black,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                    ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.product_old_price}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough
                            ),
                          ),
                      ),

                       Expanded(
                        child: Text(
                          "\$${widget.product_price}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),


          Row(
            children: <Widget>[
              // The size button 
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder : (context) {
                        return AlertDialog(
                          title: Text("Size"),
                          content: Text('Choose the size'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('close'),
                            )
                          ],
                        );

                      }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ), 
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              //The color button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder : (context) {
                        return AlertDialog(
                          title: Text("Color"),
                          content: Text('Choose color'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('close'),
                            )
                          ],
                        );

                      }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ), 
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              //The Qty button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder : (context) {
                        return AlertDialog(
                          title: Text("Qty"),
                          content: Text('Choose Qty'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('close'),
                            )
                          ],
                        );

                      }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ), 
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),


        //The second buttons
        Row(
            children: <Widget>[
              //The Qty button
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy now"),
                ),
              ),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart), 
                color: Colors.red),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border), 
                color: Colors.red),
            ],
          ),
          
          Divider(),

          ListTile(
            title: Text('Product details'),
            subtitle: Text('Long text goes here'),
          ),

          Divider(),
          //Add product name
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product name',
                  style: TextStyle(
                    color: Colors.grey,
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_name),
              )
            ],
          ),

          //Add product brand
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product brand',
                  style: TextStyle(
                    color: Colors.grey,
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('brand X'),
              )
            ],
          ),

          //Add product condition
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product condition',
                  style: TextStyle(
                    color: Colors.grey,
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('NEW'),
              )
            ],
          ),

          //divider
          Divider(),

          //padding
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Similar Products'),
            ),
          
          //Similar products goes here
          Container(
            height: 350.0,
            child: SimilarProducts(),
          )
          
        ],
      ),
    );
  }
}

//Similar products here also means recommendation
class SimilarProducts extends StatefulWidget {
  
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var similar_product_list = [
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
      "name": "Pant 1",
      "picture": "images/products/pants1.jpg",
      "old_price": 300,
      "price": 600,
    },
    {
      "name": "Pant 2",
      "picture": "images/products/pants2.jpeg",
      "old_price": 333,
      "price": 400,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: similar_product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext conntext, int index) {
        return SimilarProduct(
          product_name: similar_product_list[index]['name'],
          product_picture: similar_product_list[index]['picture'],
          product_old_price: similar_product_list[index]['old_price'],
          product_price: similar_product_list[index]['price'],
        );
      },
    );
  }
}

class SimilarProduct extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  SimilarProduct(
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