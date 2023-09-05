// import 'package:flutter/material.dart';
// import 'package:introduction_screen/introduction_screen.dart';

// PageViewModel(
//   title: 'Title of 1st Page', //Basic String Title
//   titleWidget: const Text(
//       'Title of 1st Page'), //If you want to use your own Widget
//   body: 'Body of 1st Page', //Basic String Body
//   bodyWidget: const Text(
//       'Body of 1st Page'), //If you want to use your own Widget
//   decoration:
//       const PageDecoration(), //Page decoration Contain all page customizations
//   image: Center(
//     child: Image.network(
//         'https://pub.dev/static/img/pub-dev-logo-2x.png?hash=umitaheu8hl7gd3mineshk2koqfngugi'),
//   ), //If you want to you can also wrap around Alignment
//   reverse: true, //If widget Order is reverse - body before image
//   footer: const Text('Footer'), //You can add button here for instance
// );

// class PageViewModel {
//   final String title;
//   final Widget titleWidget;
//   final String body;
//   final Widget bodyWidget;
//   final PageDecoration decoration;
//   final Widget image;
//   final bool reverse;
//   final Widget footer;

//   const PageViewModel({
//     this.title = '',
//     this.titleWidget,
//     this.body = '',
//     this.bodyWidget,
//     this.decoration = const PageDecoration(),
//     this.image,
//     this.reverse = false,
//     this.footer,
//   });
// }