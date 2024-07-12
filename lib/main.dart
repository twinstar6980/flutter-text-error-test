import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: '_custom_font_',
      ),
      home: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Builder(
            builder: (context) => FilledButton.tonal(
              child: const Text('Show'),
              onPressed: () {
                showDialog(context: context, builder: (context) => AlertDialog(
                  content: MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      devicePixelRatio: 1,
                      textScaler: const TextScaler.linear(0.85), // 0.83~0.85
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'TTTT',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          FilledButton.tonal(
                            child: const Text('Button'),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ));
              },
            ),
          ),
        ),
      ),
    );
  }
}
