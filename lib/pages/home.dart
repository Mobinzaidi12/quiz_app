import 'package:flutter/material.dart';
import 'package:quiz_app/ui_helper.dart';

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
                     color: Color(0xff417020),
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
                               Text('Mobin Zaidi', style: TextStyle(color: Color(0xffDBF2C0), fontSize:25 ,fontWeight: FontWeight.bold),)
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
                       Text('Play & \n  Win', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xff417020)),),
                       Text('Play quiz by guessing  \n           the image',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xff417020) ))
                     ],
                   ),
                 )
               ],
             ),
              Text('Top Quiz Categories', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900, color: Color(0xff417020)),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiHelper.CustomCardWiget(Image.asset('assets/images/animal.png'), 'Animal'),
                    UiHelper.CustomCardWiget(Image.asset('assets/images/place.png'), 'Place'),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   UiHelper.CustomCardWiget(Image.asset('assets/images/fruit.png'), 'Fruits'),
                    UiHelper.CustomCardWiget(Image.asset('assets/images/object.png'), 'Object')
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiHelper.CustomCardWiget(Image.asset('assets/images/sport.png'), 'Sports'),
                    UiHelper.CustomCardWiget(Image.asset('assets/images/random.png'), 'Random')
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
