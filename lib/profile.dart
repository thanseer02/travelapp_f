import 'package:flutter/material.dart';
import 'package:travelapp/attraction.dart';
import 'package:travelapp/data.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/profile/back.jpg'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 100),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile/prof.jpg'),
                    radius: 90,
                  ),
                  radius: 100,
                ),
              ),
            ],
          ),
          Text(
            'Uchiha Itachi',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            'itachiuchia@gmail.com',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_outlined,
                    size: 35,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border, size: 35)),
              IconButton(onPressed: () {}, icon: Icon(Icons.image, size: 35)),
              IconButton(onPressed: () {}, icon: Icon(Icons.people, size: 35)),
            ],
          ),
          Container(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: profile1.length,
                itemBuilder: (Context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('${profile1[index]['img']}'),
                          radius: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          '${profile1[index]['prof']}  ',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'My Favourite',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Container(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: attractions.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                          width: 250,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    '${attractions[index]['spot']}',
                                  ))),
                          child: Stack(children: [
                            Opacity(
                                opacity: 0.5,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 50,
                                    width: 300,
                                    color: Colors.black,
                                  ),
                                )),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${attractions[index]['name']}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                            ),
                          ])),
                    );
                  }))
        ]),
      ),
    ));
  }
}
