import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

Random random = Random();
int x = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Lottery App')),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(child: Text('your winning number is 5')),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: x == 5 ? 300 : 250,
                width: 325,
                decoration: BoxDecoration(
                  color: x == 5 ? Colors.yellow : Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: x == 5
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.done_all,
                              color: Colors.green,
                              size: 35,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                                child: Text(
                                    'Congratulation bro you won the lottery, your number is $x ',
                                    textAlign: TextAlign.center))
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 35,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                                child: Text(
                                    'better luck next time your number is $x \n try again ',
                                    textAlign: TextAlign.center))
                          ],
                        ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                x = random.nextInt(20);
                print(x);
              });
            },
            child: const Icon(Icons.refresh),
          )),
    );
  }
}
