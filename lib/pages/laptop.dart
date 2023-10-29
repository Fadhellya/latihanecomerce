import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:testing/data/items.dart';

class LaptopPage extends StatelessWidget {
  const LaptopPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> products = Items.laptop;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MasonryGridView.builder(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          itemCount: products.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          gridDelegate:
              SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            var items = products[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  items['image'],
                  fit: BoxFit.fill,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      items['name'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    InkWell(onTap: () {}, child: Icon(CupertinoIcons.heart))
                  ],
                ),
                Text(
                  items['description'],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  items['price'],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  minWidth: double.infinity,
                  color: Colors.black,
                  onPressed: () {},
                  child:
                      const Text('BELI', style: TextStyle(color: Colors.white)),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
