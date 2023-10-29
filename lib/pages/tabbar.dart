import 'package:flutter/material.dart';
import 'package:testing/pages/handphone.dart';
import 'package:testing/pages/jaringan.dart';
import 'package:testing/pages/laptop.dart';

class TabbarPage extends StatelessWidget {
  const TabbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    var searching = TextEditingController();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          title: TextFormField(
            controller: searching,
            decoration: InputDecoration(
                hintText: 'Pencarian',
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                  ),
                  onPressed: () {},
                ),
                prefixIcon: const Icon(
                  Icons.search,
                )),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
          ],
          bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Jaringan',
                ),
                Tab(
                  text: 'Laptop',
                ),
                Tab(
                  text: 'Handphone',
                ),
              ]),
        ),
        body: TabBarView(children: [
          JaringanPage(),
          LaptopPage(),
          HandphonePage(),
        ]),
      ),
    );
  }
}
