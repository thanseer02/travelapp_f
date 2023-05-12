import 'package:flutter/material.dart';
import 'package:travelapp/style.dart';

import 'data.dart';
import 'dicrption.dart';
class hotels extends StatelessWidget {
  const hotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text('Find a place to stay.....',style: hotels1,),
              ),
              SizedBox(height: 30,),
              Container(
                height: 600,
                child: ListView.builder(
                  itemCount: hoteldata.length,
                  itemBuilder: ( context,index) {
                   var count=hoteldata[index]['rating'];
                    return  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>dicrip(
                          name:hoteldata[index]['name'],
                          spot:hoteldata[index]['spot'],
                            disc:hoteldata[index]['disc'],
                            rate:hoteldata[index]['rate'],
                            detail:hoteldata[index]['detail'],

                        )));
                      },
                      child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                      child: Card(
                        elevation: 8,
                        shadowColor: Colors.grey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(image:  AssetImage('assets/hotels/${hoteldata[index]['spot']}'),fit: BoxFit.cover),

                              ),
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text('${hoteldata[index]['name']} $index',style: hotels2,),
                                ),
                                SizedBox(width: 190,),
                                Text('${hoteldata[index]['rate']}\$',style: hotels4,),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Text('${hoteldata[index]['disc']}',style: hotels3,),
                                  ),
                                  SizedBox(width: 100,),
                                  Text('Per Night',style: hotels5,),

                                ],
                              ),
                            ),
                            Container(
                              height: 30,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (context,index){
                                    return (index<count)?Icon(Icons.star,color: Colors.amber,):Icon(Icons.star);

                                  }),
                            )
                            // Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Row(
                            //     children: [
                            //       Icon(Icons.star,color: Colors.amber,),
                            //       Icon(Icons.star,color: Colors.amber,),
                            //       Icon(Icons.star,color: Colors.amber,),
                            //       Icon(Icons.star,color: Colors.amber,),
                            //       Icon(Icons.star_half,color: Colors.amber,),
                            //
                            //
                            //     ],
                            //   ),
                            // )

                          ],
                        ),
                      ),
                  ),
                    );
                  },

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
