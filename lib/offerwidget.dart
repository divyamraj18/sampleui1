import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class OfferWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      width: 150.0,
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: 250 ,
            child: Image.network(
                'https://images.unsplash.com/photo-1508747703725-719777637510?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80'
            ),
          ),
          ListTile(
            title: Text('onion'),
            subtitle: Text('oraganically grown'),
          )
        ],
      ),
    );
  }
}
