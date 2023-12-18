import 'package:flutter/material.dart';
import 'package:flutter_class_01/homepage.dart';
import 'package:flutter_class_01/listpage.dart';
import 'package:get/get.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact Me"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(100), // Image radius
                    child: Image.asset('image/profile.png', fit: BoxFit.cover),
                  ),
                ),
                Text("Thanakorn Yarnguy",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),),
                Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.home_filled),
                          Text("Address"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone),
                          Text("Phone Number"),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == 0) {
              Get.to(HomePage());
            } else if (value == 1) {
              Get.to(ListPage());
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "Product",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Contact us",
            )
          ],
        ));
  }
}
