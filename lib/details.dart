import 'package:flutter/material.dart';
import 'package:travelapp/style.dart';
class details1 extends StatefulWidget {
   details1({Key? key,required this.img,required this.name,required this.dis,}) : super(key: key);
var img,name,dis;
  @override
  State<details1> createState() => _details1State();
}

class _details1State extends State<details1> {
  IconData currentIcon = Icons.favorite;
  void _changeIcon() {
    setState(() {
      currentIcon = Icons.star;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 1.0),
                child: Stack(
                  children:[ Container(
                    width:double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(image:
                      AssetImage('${widget.img}'),fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50))

                    ),
                  ),
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios_new,size: 30,color: Colors.white,),),
          ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text('${widget.name}',style: d1,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.red,size: 35,)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${widget.dis}',style: d2,),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
