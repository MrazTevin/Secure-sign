import 'package:flutter/material.dart';

class LoginRequestPage extends StatefulWidget {
  @override
  _LoginRequestPageState createState() => _LoginRequestPageState();
}

class _LoginRequestPageState extends State<LoginRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Request'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Circular Progress Button with Name, Email, and Image
            Column(
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: 350, // Adjust the size as needed
                      height: 350, // Adjust the size as needed
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.amber, width: 2),
                      ),
                      child: CircularProgressIndicator(
                        value: 0.5, // Change this value as needed for progress
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
                        strokeWidth: 5,
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.amber, width: 2),
                          ),
                          child: Icon(
                            Icons.person,
                            size: 60,
                            color: Colors.amber,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Name: Battle',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Email: battle55@gmail.com',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 10),

            Text('Time to Confirm'),

            SizedBox(height: 20),

            // Card with Device, Location, and Time
            Container(
              width: 300,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Device: ABC123'),
                  Text('Location: XYZ City'),
                  Text('Time: 10:30 AM'),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Deny and Confirm Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {
                    // Implement Deny functionality
                  },
                  icon: Icon(Icons.close),
                  label: Text('Deny'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Implement Confirm functionality
                  },
                  icon: Icon(Icons.check),
                  label: Text('Confirm'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

