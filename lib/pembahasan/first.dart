import 'package:flutter/material.dart';
import 'package:testing/pembahasan/home.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    var namaController = TextEditingController();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Pengenalan Widget'),
            bottom: TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: "home",
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "setting",
                  icon: Icon(Icons.settings),
                ),
                Tab(
                  text: "menulain",
                  icon: Icon(Icons.menu),
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(),
          body: TabBarView(
            children: [
              HomePage(),
              Container(
                child: Text('Setting'),
              ),
              Container(
                child: Text('Menu Lain'),
              )
            ],
          )
          // Center(
          //     //Text Widget
          //     // child: Text(
          //     //   'Hello World',style: TextStyle(
          //     //     color: Colors.deepOrange,
          //     //     fontSize: 50.4
          //     //   ),
          //     //   )
          //     //Images Widget
          //     // child: ClipRRect(
          //     //   borderRadius: BorderRadius.circular(20),
          //     //   child: Image.network(
          //     //     'https://www.qiscus.com/id/wp-content/uploads/sites/2/2022/04/Kumpulan-kata-kata-promosi.png',
          //     //   ),
          //     // ),
          //     //Material Button
          //     // child: MaterialButton(
          //     //   color: Colors.blue,
          //     //   onPressed: () {},
          //     //   child: const Text('SUBMIT', style: TextStyle(color: Colors.white)),
          //     // ),
          //     //Circle Avatar
          //     // child: CircleAvatar(
          //     //     maxRadius: 50,
          //     //     minRadius: 50,
          //     //     backgroundColor: Colors.red,
          //     //     child: Image.asset(
          //     //       'lib/images/free-ongkir-circle.png',
          //     //     )),
          //     //TextFormField
          //     // child: Padding(
          //     //   padding: const EdgeInsets.all(16.0),
          //     //   child: TextFormField(
          //     //     decoration: InputDecoration(
          //     //         border: OutlineInputBorderr(
          //     //             borderRadius: BorderRadius.circular(16))),
          //     //     controller: namaController,
          //     //   ),
          //     // ),
          //     //Icon
          //     // child: Icon(
          //     //   Icons.access_time_sharp,
          //     //   color: Colors.blue,
          //     //   size: 50,
          //     // ),
          //     //Container
          //     // child: Container(
          //     //   decoration: BoxDecoration(
          //     //     borderRadius: BorderRadius.circular(16),
          //     //     color: Colors.brown,
          //     //   ),
          //     //   padding: EdgeInsets.all(16),
          //     //   child: Text(
          //     //     'Hello',
          //     //     style: TextStyle(color: Colors.white),
          //     //   ),
          //     // ),
          //     //

          // ),
          ),
    );
  }
}
