import 'package:flutter/material.dart';
import 'package:travelapp/data.dart';
import 'package:travelapp/style.dart';

import 'details.dart';
class nature extends StatelessWidget {
  const nature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nature'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          itemCount: nature1.length,
          itemBuilder: (context,index){
            return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details1(
                  img: nature1[index]['spot'],
                  name:  nature1[index]['name'],
                  dis:  nature1[index]['disc'],)));

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
              image: DecorationImage(image: AssetImage('${nature1[index]['spot']}'),fit: BoxFit.cover),
    borderRadius: BorderRadius.circular(12)
    ),
    ),
    Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 3),
    child: Text('${nature1[index]['name']} ',style: hotels5,),
    ),
    ],),
    ),
    ),
            ),
    );
    },
    ));
  }
}
