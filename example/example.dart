import 'package:flutter/material.dart';
import 'package:scroll_controller_direction/scroll_controller_direction.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll Controller Direction Example"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Item $index"),
                    subtitle: const Text("Scroll controller example"),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 32, right: 32),
              color: Colors.grey.shade300,
              height: 88,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        ScrollControllDirection.scrollUp(scrollController);
                      },
                      child: const Icon(
                        Icons.arrow_upward,
                        color: Colors.black,
                      )),
                  ElevatedButton(
                    onPressed: () {
                      ScrollControllDirection.scrollDown(scrollController);
                    },
                    child: const Icon(
                      Icons.arrow_downward,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
