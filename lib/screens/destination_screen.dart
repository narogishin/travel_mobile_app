import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travel_ui/models/destination_model.dart';
import 'package:travel_ui/screens/home_screen.dart';

class DestinationScreen extends StatefulWidget {
  final Destination? destination;
  DestinationScreen({this.destination});
  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0)
                      ]),
                  child: Hero(
                    tag: '${widget.destination?.imageUrl}',
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image(
                            image:
                                AssetImage('${widget.destination?.imageUrl}'),
                            fit: BoxFit.cover)),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30.0,
                          ))),
                  Row(children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: IconButton(
                            onPressed: () => print('i do else'),
                            icon: Icon(
                              Icons.search,
                              size: 30.0,
                            ))),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: IconButton(
                            onPressed: () => print('i do else 2'),
                            icon: Icon(
                              Icons.filter_list,
                              size: 30.0,
                            )))
                  ]),
                ],
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.destination?.city}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () => print('i give gps'),
                        icon: Icon(
                          Icons.gps_fixed,
                          color: Colors.white70,
                          size: 30.0,
                        ))
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.destination?.activities?.length,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(40.0, 5.0, 10.0, 5.0),
                      width: double.infinity,
                      height: 170.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 120.0,
                                  child: Text(
                                    '${widget.destination?.activities?[index].name}',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '\$${widget.destination?.activities?[index].price}',
                                      style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'per pax',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                                '${widget.destination?.activities?[index].type}',
                                style: TextStyle(color: Colors.grey)),
                            Text(
                                '${int.parse('${widget.destination?.activities?[index].rating}')}'),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 70.0,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  alignment: Alignment.center,
                                  child: Text(
                                      '${widget.destination?.activities?[index].startTimes?[0]}'),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0)
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image(
                            height: 130.0,
                            width: 130.0,
                            image: AssetImage(
                                '${widget.destination?.activities?[index].imageUrl}'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
