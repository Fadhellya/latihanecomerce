import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: 500,
      child: MasonryGridView.builder(
        scrollDirection: Axis.horizontal,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemCount: 10,
        gridDelegate:
            SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.grey,
            child: Column(
              children: [
                Image.asset(
                  'lib/images/18423.jpg',
                  fit: BoxFit.contain,
                  width: 50,
                  height: 50,
                ),
                Text('halo'),
                Text('halo'),
              ],
            ),
          );
        },
      ),
    ));
  }
}
