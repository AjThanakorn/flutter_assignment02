import 'package:flutter/material.dart';
import 'package:flutter_class_01/homepage.dart';
import 'package:get/get.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Book Store List Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Text("List Book ",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25,
                  )),
              Card(
                  child: ListTile(
                leading: Image.asset(
                  'image/book1.jpeg',
                  width: 90,
                ),
                trailing: Icon(Icons.add),
                title: Text("C++ Programming"),
                subtitle: Text(
                    "Book for beginner to learn basics Computer Network Book for beginner "
                    "to learn basics Computer Network "),
                isThreeLine: true,
              )),
              Card(
                  child: ListTile(
                    leading: Image.asset(
                      'image/book2.jpg',
                      width: 90,
                    ),
                    trailing: Icon(Icons.add),
                    title: Text("Computer Networking Book"),
                    subtitle: Text(
                        "Book for beginner to learn basics Computer Network Book for beginner "
                            "to learn basics Computer Network "),
                    isThreeLine: true,
                  )),
              Card(
                  child: ListTile(
                    leading: Image.asset(
                      'image/book3.jpg',
                      width: 90,
                    ),
                    trailing: Icon(Icons.add),
                    title: Text("Advance Data Structure"),
                    subtitle: Text(
                        "Book for beginner to learn basics Computer Network Book for beginner "
                            "to learn basics Computer Network "),
                    isThreeLine: true,
                  )),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == 0) {
              Get.to(HomePage());
            } else if (value == 2) {
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
