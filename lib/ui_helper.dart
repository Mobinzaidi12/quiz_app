import 'package:flutter/material.dart';

class UiHelper{

  static CustomTextFiled(TextEditingController controller, String text, bool onHide, Icon icon){
    return TextFormField(
        controller: controller,
        obscureText: onHide,
        style: TextStyle(fontSize: 22),
        decoration: InputDecoration(
          prefixIcon: icon,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff417020),
              width: 2, // Border thickness
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff417020),
              width: 2, // Border thickness
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          label: Text(
            text,
            style: TextStyle(color: Color(0xff417020)),
          ),
        ),
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return 'please enter a value';
        //   }
        // },
      );
  }

 static CustomQuestionContainer(height, width, String text){

    return Container(
      margin: EdgeInsets.all(20),
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
              width: 2,
              color: Color(0xff417020)
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20),
        child: Text(text, style: TextStyle(fontSize: 25, color: Color(0xff417020)),),
      ),
    );

 }

 static CustomCardWiget(image, String text){
    return  Material(
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
              child: image,
            ),
            Text(text, style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900, color: Color(0xff417020)), )
          ],
        ),
      ),
    );
 }

}