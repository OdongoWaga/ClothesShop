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
      "size": "7",
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
            cartProductPicture: productsOnCart[index]['quantity'],
            cartProductPrice: productsOnCart[index]['size'],
            cartProductQty: productsOnCart[index]['price'],
            cartProductSize: productsOnCart[index]['picture'],
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
        title: Text(cartProductName),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text("Size"),
                ),
                Expanded(
                  child: Text("Size"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
