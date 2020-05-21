import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
   int count=0;

  void _increment(){
    setState(() {
      count=count+1;
    });
  }

  void _decrement(){
    setState(() {
      count=count-1;
      if(count<0)
        count=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    var deviceWidth=MediaQuery.of(context).size.width;
    return  ListTile(
      leading: Container(
        height: 250,
        width: MediaQuery.of(context).size.width-deviceWidth/1.5,
        child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTKntsRU74bKELXcoLX13k5KBGfHZJs95MjNNK7VeqopCwXw6O8&usqp=CAU'),
      ),
      title: Text('Lorem Ipsum Name'),
      subtitle: Text('Lorem Ipsum Information Price'),
      isThreeLine: true,
      trailing: Container(
        height: 30,
        width: 110,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(5),
          shape: BoxShape.rectangle,
        ),
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                onPressed: _decrement,
            ),
            Container(
              child: Center(
                child: Text(count.toString(),style: TextStyle(color: Colors.white),),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: _increment,
            )
          ],
        ),
      ),
    );
  }
}
