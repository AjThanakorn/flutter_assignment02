import 'package:flutter/material.dart';
import 'bookdata.dart';
class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book List"),
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Text("Search book",
          style: TextStyle(fontSize: 25)),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListView.builder(
                itemCount: myBook.length,
                itemBuilder: (context, index) {
                  return Card(child: Container(
                      height: 80,child: Text("hello")));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
