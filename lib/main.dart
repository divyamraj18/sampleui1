import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sampleui1/ListViewVeg.dart';
import 'package:sampleui1/offerwidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: FlatButton(
            onPressed: () => {},
            child:
                IconButton(icon: Icon(Icons.arrow_back), onPressed: () => {})),
        title: Text(
          'Vegetable And Fruits',
          style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
           child:SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 80,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      //color: Colors.grey,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: SearchBar(
                  searchBarStyle: SearchBarStyle(
                      backgroundColor: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      padding: EdgeInsets.all(10)),
                  hintText: 'Find An Item',
                  icon: Icon(
                    Icons.search,
                    color: Colors.deepPurple,
                    size: 40,
                  ),
                  iconActiveColor: Colors.blue,
                ),
              ),
              Container(
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 150,
                      color: Colors.white,
                      child: InkWell(
                        child: Column(
                          children: <Widget>[
                            Card(
                              margin: EdgeInsets.all(10),
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1452948491233-ad8a1ed01085?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1353&q=80'),
                            ),
                            Container(
                              height: 30,
                              child: Center(
                                child: Text(
                                  'Vegies',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 18),
                                ),
                              ),
                            ),
                            Container(
                              height: 7.0,
                              color: Colors.blue,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      color: Colors.white,
                      child: InkWell(
                        child: Column(
                          children: <Widget>[
                            Card(
                              margin: EdgeInsets.all(10),
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1562347810-18a0d370ba36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
                            ),
                            Container(
                              height: 30,
                              child: Center(
                                child: Text(
                                  'Fruits',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 18),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 30,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Seasonal Offers',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w200,
                      fontStyle: FontStyle.italic),
                ),
              ),

              Container(
                height: 192,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    OfferWidget(),
                    OfferWidget(),
                    OfferWidget(),
                    OfferWidget(),
                    OfferWidget(),
                    OfferWidget(),
                    OfferWidget(),
                    OfferWidget(),


                  ],
                ),
              ),
              Container(
                height :242,
                  child: ListViewVeg(),
              ),
            ],
              ),
          ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        
      },

        child: Icon(Icons.shopping_basket,size: 30,),
        //backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
