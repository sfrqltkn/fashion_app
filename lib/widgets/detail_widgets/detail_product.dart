import 'package:fashion_app/constant/app_constant.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 15,
      right: 15,
      bottom: 15,
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 4,
        child: Container(
          height: 250,
          width: MediaQuery.of(context).size.width - 30,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/dress.jpg',
                              ),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text("LAMINATED", style: Constant.contentText),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text("Louis vuitton", style: Constant.personName),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 55,
                        width: MediaQuery.of(context).size.width - 170,
                        child: const Text(
                            "One button V-neck sling long-sleeved waist female stitching dress",
                            style: Constant.cardDesc),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10, bottom: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text('\$ 6500', style: Constant.contentText),
                    Container(
                      margin: const EdgeInsets.only(right: 30),
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.brown,
                        child:
                            const Center(child: Icon(Icons.arrow_forward_ios)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
