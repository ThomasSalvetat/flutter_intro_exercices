import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Widgets samples'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: //
              // TextSample(),
              // RowSample(),
              // ColumnSample(),
              // ListViewSample(),
              // ContainerSample(),
              // StackSample(),
              // Counter(),
              ButtonsSample(),
        ));
  }
}

class ItemSample extends StatelessWidget {
  const ItemSample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 60,
      height: 60,
      margin: const EdgeInsets.all(8.0),
    );
  }
}

/**
 * TEXT
 */

class TextSample extends StatelessWidget {
  const TextSample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Hello World !",
        style: TextStyle(color: Colors.amber, fontSize: 16, wordSpacing: 3));
  }
}

/**
 * ROW
 */

class RowSample extends StatelessWidget {
  const RowSample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(3, (index) => const ItemSample()),
      ),
    );
  }
}

/**
 * COLUMN
 */

class ColumnSample extends StatelessWidget {
  const ColumnSample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(3, (index) => const ItemSample()),
      ),
    );
  }
}

/**
 * LISTVIEW
 */

class ListViewSample extends StatelessWidget {
  const ListViewSample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, __) => const ItemSample(),
    );
  }
}

/**
 * CONTAINER
 */

class ContainerSample extends StatelessWidget {
  const ContainerSample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 260,
        color: Colors.blueGrey,
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(-0.25),
        child: const Text("Containers!",
            style: TextStyle(color: Colors.white, fontSize: 25)));

    // return Container(
    //     height: 100,
    //     width: 100,
    //     decoration: const BoxDecoration(
    //         shape: BoxShape.circle,
    //         boxShadow: [
    //           BoxShadow(
    //               color: Colors.grey,
    //               spreadRadius: 5,
    //               blurRadius: 7,
    //               offset: Offset(0, 3))
    //         ],
    //         gradient: LinearGradient(
    //             begin: Alignment.topCenter,
    //             end: Alignment.bottomCenter,
    //             colors: [Colors.red, Colors.blue])));
  }
}

/**
 * STACK
 */

class StackSample extends StatelessWidget {
  const StackSample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(color: Colors.red)),
        const Text("Stack", style: TextStyle(fontSize: 25))
      ],
    );

    // return Stack(
    //   children: [
    //     Container(
    //         width: 100,
    //         height: 100,
    //         decoration: const BoxDecoration(color: Colors.red)),
    //     const Positioned(
    //         bottom: 0,
    //         right: 0,
    //         child: Text("Stack", style: TextStyle(fontSize: 25)))
    //   ],
    // );
  }
}

/**
 * STATE
 */

class Counter extends StatefulWidget {
  final int from;
  const Counter({Key? key, this.from = 0}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  get _count => _counter + widget.from;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("$_count"),
      IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      )
    ]);
  }
}

/**
 * BUTTONS
 */

class ButtonsSample extends StatelessWidget {
  const ButtonsSample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(onPressed: () {}, child: const Text("ElevatedButton")),
      TextButton(onPressed: () {}, child: const Text("TextButton")),
      ButtonBar(
        children: [
          ElevatedButton(onPressed: () {}, child: const Text("ElevatedButton")),
          TextButton(onPressed: () {}, child: const Text("TextButton"))
        ],
      ),
      IconButton(onPressed: () {}, icon: const Icon(Icons.person))
    ]);
  }
}
