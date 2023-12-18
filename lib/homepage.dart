import 'package:flutter/material.dart';
import 'package:flutter_class_01/contactpage.dart';
import 'package:flutter_class_01/listpage.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Book Store Home Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('image/profile.png', width: 60),
                  Text("Welcome,Mr.Thanakorn",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 20,
                      )),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "Search for Book",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 35,
              ),
              Expanded(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text("Book Suggestion",
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 20,
                                  )),
                              Image.asset(
                                'image/mybook.jpg',
                                width: 350,
                              )
                            ],
                          )),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == 1) {
              Get.to(ListPage());
            }
            else if(value==2){
              Get.to(ContactPage());
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
