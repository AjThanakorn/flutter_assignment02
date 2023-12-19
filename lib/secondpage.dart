import 'package:flutter/material.dart';
import 'bookdata.dart';
class BookList extends StatelessWidget {
   BookList({super.key});

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
                      height: 120,child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.account_balance),
                          Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(myBook[index].bookName,style: TextStyle(fontSize: 30,color: Colors.indigo,fontWeight: FontWeight.bold)),
                              Text(myBook[index].bookType,style: TextStyle(fontSize: 18,color: Colors.blueGrey)),
                              Text(myBook[index].bookPrice,style: TextStyle(fontSize: 20,color: Colors.blueGrey),),
                              Text("${myBook[index].pages}",style: TextStyle(fontSize: 20,color: Colors.blue,fontStyle: FontStyle.italic),),
                            ],
                          ),
                        ],
                      )));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
