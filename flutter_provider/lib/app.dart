import 'package:flutter/material.dart';
import 'package:flutter_provider/pages/coutner_page.dart';
import 'package:flutter_provider/states/counter_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: CounterProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: CounterPage(),
      ),
    );
  }
}
