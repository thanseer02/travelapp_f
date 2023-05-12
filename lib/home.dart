import 'package:flutter/material.dart';
import 'package:travelapp/style.dart';
import 'data.dart';
import 'details.dart';
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/home.jpg'),fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                )
              ),
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  Text('Where do you wat to go ?',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w400),),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: home1,
                      decoration: InputDecoration(
                        hintText: '  Search',
                        suffixIcon:  Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 38.0),
                          child: Icon(Icons.search_rounded),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white
                          )
                        ),

                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text('Suggetions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  SizedBox(width: 228,),
                  Icon(Icons.arrow_forward,size: 30,)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 150,
              // width: MediaQuery.of(context).,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: srilanka.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>details1(
                            img: srilanka[index]['spot'],
                            name:  srilanka[index]['name'],
                            dis:  srilanka[index]['disc'],)));

                        },
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
                                    image: DecorationImage(image: AssetImage('${srilanka[index]['spot']}'),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(12)

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 3),
                                child: Text('${srilanka[index]['name']} $index',style: hotels5,),
                              ),
                              Text(' srilanka')

                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },

              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text('Top Rated',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  SizedBox(width: 228,),
                  Icon(Icons.arrow_forward,size: 30,)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 150,
              // width: MediaQuery.of(context).,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: attractions.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>details1(
                            img: attractions[index]['spot'],
                            name:  attractions[index]['name'],
                            dis:  attractions[index]['disc'],)));

                        },
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
                                    image: DecorationImage(image: AssetImage('${attractions[index]['spot']}'),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(12)

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 3),
                                child: Text('${attractions[index]['name']}',style: hotels5,),
                              ),

                            ],
                          ),
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
    );
  }
}
