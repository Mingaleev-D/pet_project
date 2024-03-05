import 'package:flutter/material.dart';

class DetailsScreenCast extends StatelessWidget {
  const DetailsScreenCast({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Serial cast'),
            SizedBox(
              height: 200,
              child: Scrollbar(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemExtent: 120,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey.shade500),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8.0,
                              offset: const Offset(0.0, 2.0),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          clipBehavior: Clip.hardEdge,
                          child: Column(
                            children: [
                              Image.asset('assets/flutter_app.png'),
                              Text('Name actor'),
                              Text('Name actor'),
                              Text('Name actor'),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            TextButton(onPressed: () {}, child: const Text("Full cast Crew"))
          ],
        ),
      ),
    );
  }
}
