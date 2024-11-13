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
        debugShowCheckedModeBanner: false,
        title: 'flutterのデモアプリです',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const MyHomePage()
        // home: const Center(
        //   child: Column(
        //     children: [
        //       Text(
        //         "hello world",
        //         style: TextStyle(color: Colors.yellow, fontSize: 40),
        //       ),
        //       Text(
        //         "hello world",
        //         style: TextStyle(color: Colors.yellow, fontSize: 40),
        //       ),
        //     ],
        //   ),
        // )
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Scaffoldで囲んどいたら、AppBarとか使える
        appBar: AppBar(
          title: const Text("hello world"),
          backgroundColor: Colors.red, // AppBarの背景色　おおもじのColors.を使う
          centerTitle: true, // 中央寄せ
        ),
        body: const Center(
          child: Column(
            children: [
              Text(
                "hello world",
                style: TextStyle(color: Colors.yellow, fontSize: 40),
              ),
              Text(
                "hello world",
                style: TextStyle(color: Colors.yellow, fontSize: 40),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     print(greeting("poteto"));
              //   },
              //   child: const Text("ボタン"),
              // ),
              MyPageStateFull(title: "ボタンをクリックしてみてね"),
            ],
          ),
        ));
  }
}

String buttonClick() {
  return "ボタンがクリックされたよ";
}

String greeting(String name) {
  return "hello $name";
}

class MyPageStateFull extends StatefulWidget {
  const MyPageStateFull({super.key, required this.title});

  final String title;

  @override
  State<MyPageStateFull> createState() => _MyPageStateFullState();
}

class _MyPageStateFullState extends State<MyPageStateFull> {
  var _message = "";

  @override
// ここで初期化しないとうまくいかない
  void initState() {
    super.initState();
    _message = widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            Text(_message),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _message = buttonClick();
                });
              },
              child: const Text("ボタン"),
            ),
          ],
        ),
        color: Colors.blue,
      ),
    );
  }
}




// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});


//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
  
//     return Scaffold(
//       appBar: AppBar(
     
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    
//         title: Text(widget.title),
//       ),
//       body: Center(
    
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
   
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
