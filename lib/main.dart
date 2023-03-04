import 'package:flutter/material.dart';
import 'package:pomodoro/src/pages/pomodoro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',

      routes: {
        '/': (context) => const Pomodoro(),
      },
    );
  }
}


// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:pomodoro/src/stores/contador_store.dart';

// final store = ContadorStore();

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Counter'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Observer(
//               builder: (_) => Text(
//                 '${store.counter}',
//                 style: Theme.of(context).textTheme.headline4,
//               ),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: store.increment,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }