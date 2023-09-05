
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Map<String, dynamic>> itemList = [
    {'number': 1, 'title': 'Sample Title 1'},
    {'number': 2, 'title': 'Sample Title 2'},
    {'number': 3, 'title': 'Sample Title 3'},
    {'number': 4, 'title': 'Sample Title 4'},
    {'number': 5, 'title': 'Sample Title 5'},
    {'number': 6, 'title': 'Sample Title 6'},
    {'number': 7, 'title': 'Sample Title 7'},
    {'number': 8, 'title': 'Sample Title 8'},
    {'number': 9, 'title': 'Sample Title 9'},
    {'number': 10, 'title': 'Sample Title 10'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.amberAccent
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Sample Title',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Text(itemList[index]['number'].toString()),
                    title: Text(itemList[index]['title']),
                    onTap: () {
                      // Add your logic for item selection here
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your logic for the "+" button here
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: const Text('Home'),
       backgroundColor: Colors.amberAccent,
     ),
    );
  }
}