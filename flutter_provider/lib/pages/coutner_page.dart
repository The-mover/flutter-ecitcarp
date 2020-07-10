import 'package:flutter/material.dart';
import 'package:flutter_provider/states/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  void _incrementCounter(BuildContext context) {
    Provider.of<CounterProvider>(context, listen: false).incrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    var counter =
        Provider.of<CounterProvider>(context, listen: true).currentCounter;
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Practice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many time'),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(context),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
