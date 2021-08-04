import 'dart:convert';

import 'package:achievement_view/achievement_view.dart';
import 'package:arkan_wholesaler/models/TextFiled.dart';

import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;

class Talabat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();
    TextEditingController controller3 = TextEditingController();

    void press() async {
      if (controller.text.isNotEmpty &&
          controller1.text.isNotEmpty &&
          controller2.text.isNotEmpty &&
          controller3.text.isNotEmpty) {
        String url =
            "https://arcan-b5c08-default-rtdb.firebaseio.com/order.json";
        await http.post(
          Uri.parse(
            url,
          ),
          body: json.encode(
            {
              "Name": controller.text,
              "Adders": controller1.text,
              "PhoneNumber": controller2.text,
              "Oder": controller3.text
            },
          ),
        );

        Navigator.pop(context);

        AchievementView(
          context,
          title: '     تم   ',
          isCircle: true,
          subTitle: '  شكرا لنعاملك معنا   ',
          color: Colors.green,
        ).show();
        print("Done");
      } else {
        Toast.show(
          'املا كل الحقول النصيه رجاءا',
          context,
          duration: Toast.LENGTH_LONG,
        );
        print("Error");
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("للطلب"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                child: Image.asset(
                  "images/logo.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            buildTextField('الاسم', TextInputType.name, Icons.person,
                controller, TextInputAction.next, false, 1),
            buildTextField(
                'العنوان',
                TextInputType.streetAddress,
                Icons.location_on_rounded,
                controller1,
                TextInputAction.next,
                false,
                1),
            buildTextField(
                'رقم الهاتف',
                TextInputType.phone,
                Icons.phone_android,
                controller2,
                TextInputAction.next,
                false,
                1),
            buildTextField(
                'الطلب والصنف والكميه',
                TextInputType.name,
                Icons.mail_outline,
                controller3,
                TextInputAction.newline,
                true,
                10),
            SizedBox(
              height: 18,
            ),
            Container(
              height: 40,
              width: 120,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF219ebc))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_cart_outlined),
                    Text("اطلب الان")
                  ],
                ),
                onPressed: () => press(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
