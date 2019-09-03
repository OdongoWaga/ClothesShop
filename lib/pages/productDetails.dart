import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailPicture;
  final productDetailOldPrice;
  final productDetailPrice;

  ProductDetails(
      {this.productDetailName,
      this.productDetailPicture,
      this.productDetailPrice,
      this.productDetailOldPrice});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('Haute'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.productDetailPicture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    "${widget.productDetailName}",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$ ${widget.productDetailOldPrice}",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.productDetailPrice}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
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
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose Size'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('close'),
                            ),
                          ],
                        );
                      },
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
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Color'),
                          content: Text('Choose Color'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('close'),
                            ),
                          ],
                        );
                      },
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
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Qty'),
                          content: Text('Choose Quantity'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('close'),
                            ),
                          ],
                        );
                      },
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
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy'),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Divider(color: Colors.red),
          ListTile(
            title: Text("Product Detail"),
            subtitle: Text(
                "TTacos listicle pop-up synth occupy, franzen before they sold out disrupt DIY cardigan. Jianbing craft beer mixtape pitchfork plaid. DIY man bun meditation, air plant 3 wolf moon hammock hella neutra polaroid pour-over marfa. 3 wolf moon waistcoat celiac, church-key everyday carry umami heirloom ugh."),
          ),
          Divider(color: Colors.red),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.productDetailName),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Brand',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Brand X"),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Condition',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("New"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
