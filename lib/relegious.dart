import 'package:flutter/material.dart';
import 'package:travelapp/details.dart';
import 'package:travelapp/style.dart';

import 'data.dart';
class relegious extends StatelessWidget {
  const relegious({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Relegious'),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
        itemCount: rlgs1.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
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
                    InkWell(
                    onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>details1(
              img: rlgs1[index]['spot'],
              name:  rlgs1[index]['name'],
              dis:  rlgs1[index]['disc'],)));

              },
                      child: Container(
                        height: 80,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('${rlgs1[index]['spot']}'),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 3),
                      child: Text('${rlgs1[index]['name']} ',style: hotels5,),
                    ),
                  ],),
              ),
            ),
          );
        },
      )
    );
  }
}
