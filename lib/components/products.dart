import 'package:flutter/material.dart';
import 'package:clothesshop/pages/productDetails.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
      'oldPrice': 120,
      'price': 80
    },
    {
      'name': 'Red Dress',
      'picture': 'images/products/dress1.jpeg',
      'oldPrice': 120,
      'price': 70
    },
    {
      'name': 'Heels',
      'picture': 'images/products/hills1.jpeg',
      'oldPrice': 120,
      'price': 70
    },
    {
      'name': 'Red Dress',
      'picture': 'images/products/skt1.jpeg',
      'oldPrice': 120,
      'price': 70
    },
    {
      'name': 'Red Dress',
      'picture': 'images/products/skt2.jpeg',
      'oldPrice': 120,
      'price': 70
    },
    {
      'name': 'Red Dress',
      'picture': 'images/products/dress2.jpeg',
      'oldPrice': 120,
      'price': 70
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          productName: productList[index]['name'],
          productPicture: productList[index]['picture'],
          productOldPrice: productList[index]['oldPrice'],
          productPrice: productList[index]['price'],
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  SingleProduct(
      {this.productName,
      this.productPicture,
      this.productPrice,
      this.productOldPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetails(
                  productDetailName: productName,
                  productDetailPrice: productPrice,
                  productDetailOldPrice: productOldPrice,
                  productDetailPicture: productPicture,
                ),
              ),
            ),
            child: GridTile(
              child: Image.asset(
                productPicture,
                fit: BoxFit.cover,
              ),
              footer: Container(
                color: Colors.white70,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        productName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ),
                    Text(
                      '\$${productPrice}',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
