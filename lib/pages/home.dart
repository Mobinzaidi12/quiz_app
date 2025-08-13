import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDBF2C0),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Stack(
               children: [
                 ClipRRect(
                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
                   child: Container(
                    height: 220,
                     width: MediaQuery.of(context).size.width,
                     color: Color(0xff17020A),
                     child: Stack(
                       children: [
                         Container(
                           margin: EdgeInsets.only(left: 30.0, top: 40),
                           width: MediaQuery.of(context).size.width,
                           child: Row(
                             children: [
                               CircleAvatar(
                                 child: Image.asset('assets/images/user.png'),
                                 radius: 30,
                               ),
                               SizedBox(width: 20,),
                               Text('Mobin Zaidi', style: TextStyle(color: Colors.white, fontSize:20 ,fontWeight: FontWeight.bold),)
                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.only(top: 85),
                   height: 300,
                   width: double.infinity,
                   decoration: BoxDecoration(
                       image: DecorationImage(image: AssetImage('assets/images/thinks.png'))
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Play & \n  Win', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                       Text('Play quiz by guessing  \n           the image',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                     ],
                   ),
                 )
               ],
             ),
              Text('Top Quiz Categories', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 5.0,
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        height: 180,
                        width: 180,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130,
                              width: 140,
                              child: Image.asset('assets/images/animal.png'),
                            ),
                            Text('Animal', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900), )
                          ],
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 5.0,
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        height: 180,
                        width: 180,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130,
                              width: 140,
                              child: Image.asset('assets/images/place.png'),
                            ),
                            Text('Place', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900), )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 5.0,
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        height: 180,
                        width: 180,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130,
                              width: 140,
                              child: Image.asset('assets/images/fruit.png'),
                            ),
                            Text('Fruits', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900), )
                          ],
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 5.0,
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        height: 180,
                        width: 180,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130,
                              width: 140,
                              child: Image.asset('assets/images/object.png'),
                            ),
                            Text('Objects', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900), )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 5.0,
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        height: 180,
                        width: 180,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130,
                              width: 140,
                              child: Image.asset('assets/images/sport.png'),
                            ),
                            Text('Sports', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900), )
                          ],
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 5.0,
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        height: 180,
                        width: 180,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130,
                              width: 140,
                              child: Image.asset('assets/images/random.png'),
                            ),
                            Text('Random', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900), )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
