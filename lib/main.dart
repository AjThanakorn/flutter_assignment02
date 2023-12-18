import 'package:flutter/material.dart';
import 'package:flutter_class_01/homepage.dart';
import 'package:get/get.dart';
import 'package:flutter_class_01/secondpage.dart';

void main() {
  runApp(const WelcomePage());
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 75,
            ),
            Image.asset('image/book_store.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My Book Store",
                    style: TextStyle(
                        color: Colors.blue.shade300,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                Icon(
                  Icons.book,
                  size: 25,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 25,
            ),
            Text("Reading is Life , Choose the right Book",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 55,
            ),
            Container(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.off(BookList());
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
