import 'package:flutter/material.dart';
import 'package:travelapp/details.dart';
import 'package:travelapp/style.dart';

import 'data.dart';
class history extends StatelessWidget {
  const history({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text('History'),
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios_new)),
    ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
        itemCount: history1.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details1(
                    img: history1[index]['spot'],
                    name: history1[index]['name'],
                    dis: history1[index]['disc']
                )
                )
                );
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
                            image: DecorationImage(image: AssetImage('${history1[index]['spot']}'),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 3),
                        child: Text('${history1[index]['name']} ',style: hotels5,),
                      ),
                    ],),
                ),
              ),
            ),
          );
        },
      )
    );
  }
}
