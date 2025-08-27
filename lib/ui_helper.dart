import 'package:flutter/material.dart';

class UiHelper {
  // CustomCardWiget method
  static Widget CustomCardWiget(Widget image, String text) {
    return Material(
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
            Text(text,
                style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff417020)
                )
            )
          ],
        ),
      ),
    );
  }

  // CustomQuestionContainer method
  static Widget CustomQuestionContainer(double height, double width,
      String text) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2, color: const Color(0xff417020)),
        color: Colors.white,
      ),
      child: Center(
        child: Text(text,
            style: const TextStyle(
                fontSize: 20,
                color: Color(0xff417020),
                fontWeight: FontWeight.bold
            )
        ),
      ),
    );
  }

  // CustomTextFiled method
  static Widget CustomTextFiled(TextEditingController controller, String text,
      bool onHide, Icon icon) {
    return TextFormField(
      controller: controller,
      obscureText: onHide,
      style: const TextStyle(fontSize: 22),
      decoration: InputDecoration(
        prefixIcon: icon,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff417020),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff417020),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        label: Text(
          text,
          style: const TextStyle(color: Color(0xff417020)),
        ),
      ),
    );
  }

  // CustomAlertBox method
  static void CustomAlertBox(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xffDBF2C0),
          title: const Text(
            "Alert",
            style: TextStyle(
              color: Color(0xff417020),
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            text,
            style: const TextStyle(
              color: Color(0xff417020),
              fontSize: 18,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "OK",
                style: TextStyle(
                  color: Color(0xff417020),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}