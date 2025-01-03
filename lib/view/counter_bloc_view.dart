import 'package:flutter/material.dart';

class NewCounterBlocView extends StatelessWidget {
  const NewCounterBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Bloc'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8),
            // BlocBuilder<Coun>, int>(builder: (context, state) {
            //   return Text(
            //     '$state',
            //     style: const TextStyle(fontSize: 48),
            //   );
            // })
          ],
        ),
      ),
      floatingActionButton: Wrap(
        direction: Axis.vertical,
        spacing: 8,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {},
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {},
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {},
            tooltip: 'Reset',
            child: const Icon(Icons.reset_tv),
          ),
        ],
      ),
    );
  }
}
