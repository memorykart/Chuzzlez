import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'package:chuzzlez/models/user_provider.dart';

void main() {
  runApp(MyApp());
}

// Color 0x003dc2bf
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Chuzzlez',
        home: Scaffold(
          // appBar: AppBar(
          //   title: const Text('Chuzzlez'),
          // ),
          body: HomeScreen(),
        ),
      ),
    );
  }
}
