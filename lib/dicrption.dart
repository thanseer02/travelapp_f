import 'package:flutter/material.dart';
import 'package:travelapp/style.dart';
class dicrip extends StatefulWidget {
   dicrip({Key? key,required this.name,required this.spot,required this.rate,required this.disc,required this.detail,}) : super(key: key);
var name,spot,rate,disc,detail;
  @override
  State<dicrip> createState() => _dicripState();
}

class _dicripState extends State<dicrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.name}',style: TextStyle(color: Colors.black),),
         leading: IconButton(onPressed: (){
    Navigator.pop(context);
    }, icon: Icon(Icons.arrow_back_ios_new),color: Colors.black,),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage('assets/hotels/${widget.spot}'),fit: BoxFit.cover)
                ),



              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(widget.disc,style: hotels1,),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0),
                  child: Text(widget.rate,style: hotels7,),
                ),
                Text('/-Per Day',style: hotels6,),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(widget.detail,style: hotels6,),
            ),
          ],
        ),
      ),

    );
  }
}
