import 'package:flutter/material.dart';

import 'package:chat_tiempo_real/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      initialRoute: 'login',
      routes: appRoutes,
   );
  }
}