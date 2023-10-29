import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:testing/data/items.dart';

class JaringanPage extends StatelessWidget {
  const JaringanPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> products = Items.products;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 130,
                child: MasonryGridView.builder(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 60,
                      child: Column(
                        children: [
                          CircleAvatar(
                            minRadius: 45,
                            maxRadius: 45,
                            child: Image.asset(
                                'lib/images/free-ongkir-circle.png'),
                          ),
                          const Text(
                            'Voucher Ongkir 50 % Minimal Pembelian diatas Rp 100rb',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Shoptober : Where Savings and needs are met',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Shop Now!',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('lib/images/18423.jpg')),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Kamu Mungkin Suka Produk Ini',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 320,
                child: MasonryGridView.builder(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                            width: 150,
                            child: Image.asset(
                              'lib/images/jaringan/modem.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Modemsad',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Icon(CupertinoIcons.heart))
                            ],
                          ),
                          const Text(
                            'MODEM USB LTE DONGLE',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          const Text(
                            'Rp 400.000',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            minWidth: double.infinity,
                            color: Colors.black,
                            onPressed: () {},
                            child: const Text('BELI',
                                style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'All Product',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              MasonryGridView.builder(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                itemCount: products.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
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
                          InkWell(
                              onTap: () {}, child: Icon(CupertinoIcons.heart))
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
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        minWidth: double.infinity,
                        color: Colors.black,
                        onPressed: () {},
                        child: const Text('BELI',
                            style: TextStyle(color: Colors.white)),
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
