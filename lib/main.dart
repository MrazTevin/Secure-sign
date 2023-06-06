import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secure Sign',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingScreen(title: 'Onboarding Page'),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  final List<String> images = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
  ];

  final List<String> titles = [
    'Welcome to App',
    'Explore features',
    'Get started',
  ];

  final List<descriptions> = [
     'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
     'Nunc maximus aliquam mi, ut tempor quam elementum vitae.',
     'Praesent ac sem euismod, iaculis leo vel, consequat nisl.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemCount: 3,
        itemBuilder: (Buildcontext, context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                images[index],
                width: 200,
                height: 200,
              ),
            ]
            SizedBox(height: 30),
            Text(
              titles[index],
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                descriptions[index],
                textAlign: TextAlign.center,
              ),
            ),
          ),
        },
        pagination: SwiperPagination(),
        control: SwiperControl(),
      )
    )
  }
  
}

