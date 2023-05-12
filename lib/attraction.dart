import 'package:flutter/material.dart';
import 'package:travelapp/profile.dart';
import 'package:travelapp/history.dart';
import 'package:travelapp/nature.dart';
import 'package:travelapp/relegious.dart';
import 'package:travelapp/style.dart';

import 'data.dart';
import 'details.dart';
class attraction extends StatelessWidget {
  const attraction({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(
  child:   Column(
    children: [
      Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('History',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  ),
                  SizedBox(width: 228,),
                  IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>history()));
                  }, icon: Icon(Icons.arrow_forward,size: 30,)),

                ],
              ),
      SizedBox(height: 15,),
      Container(
                  height: 150,
                  // width: MediaQuery.of(context).,
                  child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: attraction1.length,
                  itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>details1(
                          img: attraction1[index]['spot'],
                          name:  attraction1[index]['name'],
                          dis:  attraction1[index]['disc'],)));
                    },
                    child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Card(
                    elevation: 5,
                    child: Container(
                    height: 141,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('${attraction1[index]['spot']}'),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(12)
                    ),
                    ),
                    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 3),
                    child: Text('${attraction1[index]['name']} ',style: hotels5,),
                    ),
                    ],),
                    ),
                    ),
                    ),
                  );})),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children:  [

          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Nature',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
          ),
          SizedBox(width: 228,),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>nature()));
          }, icon: Icon(Icons.arrow_forward,size: 30,)),
        ],
      ),
      SizedBox(height: 15,),
      Container(
          height: 150,
          // width: MediaQuery.of(context).,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: attraction1.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>details1(
                        img: attraction2[index]['spot'],
                        name:  attraction2[index]['name'],
                        dis:  attraction2[index]['disc'],)));

                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        height: 80,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('${attraction2[index]['spot']}'),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 3),
                              child: Text('${attraction2[index]['name']} ',style: hotels5,),
                            ),
                          ],),
                      ),
                    ),
                  ),
                );})),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Relegious',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
          ),
          SizedBox(width: 225,),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>relegious()));
          }, icon: Icon(Icons.arrow_forward,size: 30,)),        ],
      ),
      SizedBox(height: 15,),
      Container(
          height: 150,
          // width: MediaQuery.of(context).,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: attraction1.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: InkWell(
                  onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>details1(
                img: attraction3[index]['spot'],
                name:  attraction3[index]['name'],
                dis:  attraction3[index]['disc'],)));

                },
                    child: Card(
                      elevation: 5,
                      child: Container(
                        height: 141,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('${attraction3[index]['spot']}'),fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 3),
                              child: Text('${attraction3[index]['name']}',style: hotels5,),
                            ),
                          ],),
                      ),
                    ),
                  ),
                );
              }
          )
      ),
    ],
  ),

),
    );
  }
}
