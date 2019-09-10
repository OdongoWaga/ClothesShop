import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnCart = [
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
      'price': 80,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      'name': 'Shoes',
      'picture': 'images/products/hills1.jpeg',
      'price': 90,
      "size": "L",
      "color": "Black",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productsOnCart.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cartProductName: productsOnCart[index]['name'],
            cartProductColor: productsOnCart[index]['color'],
            cartProductPicture: productsOnCart[index]['picture'],
            cartProductPrice: productsOnCart[index]['price'],
            cartProductQty: productsOnCart[index]['quantity'],
            cartProductSize: productsOnCart[index]['size'],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final cartProductName;
  final cartProductPicture;
  final cartProductSize;
  final cartProductPrice;
  final cartProductColor;
  final cartProductQty;

  SingleCartProduct(
      {this.cartProductName,
      this.cartProductColor,
      this.cartProductPicture,
      this.cartProductPrice,
      this.cartProductQty,
      this.cartProductSize});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          cartProductPicture,
          width: 100,
          height: 100,
        ),
        title: Text(cartProductName),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text("Size: "),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    cartProductSize,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(cartProductColor,
                      style: TextStyle(color: Colors.red)),
                ),
              ],
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "\$${cartProductPrice}",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ))
          ],
        ),
      ),
    );
  }
}
