import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_watch_store_ui/models/fake_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/menu.png"),
                  Stack(
                    children: [
                      Image.asset("assets/images/Bag.png"),
                      Positioned(
                        right: 0,
                        child: Container(
                          width: 17,
                          height: 17,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFFFF3D71),
                            border: Border.all(color: Colors.white,width: 3)
                          ),
                          child: const Center(child: Text("3",style: TextStyle(color: Colors.white,fontSize: 8),)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 48),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text("The Collection",style: TextStyle(fontSize: 32,color: Color(0xFF222B45))),
            ),
            const SizedBox(height: 48),

            CarouselSlider.builder(
                itemCount: FakeData.productList.length,
                itemBuilder: (context, index, realIndex) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      // container
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0,bottom: 15.0),
                        child: Container(
                          width: 279,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: FakeData.productList[index].color,
                            boxShadow: [
                              BoxShadow(color: FakeData.productList[index].color!.withOpacity(0.60),blurRadius: 10,offset: Offset(0,2))
                            ]
                          ),
                        ),
                      ),
                      // image
                      Positioned(
                        top:0,
                          child: Image.asset(FakeData.productList[index].image!)),
                      Positioned(
                        bottom: 30,
                          child: Column(
                            children: [
                              Text(FakeData.productList[index].title!,style: const TextStyle(fontSize: 26,color: Colors.white),),
                              const SizedBox(height: 4),
                              Text(FakeData.productList[index].strap!,style:  TextStyle(fontSize: 16,color: Colors.white.withOpacity(0.50)),),
                              const SizedBox(height: 8),
                              Text("US \$ ${FakeData.productList[index].price}",style: const TextStyle(fontSize: 16,color: Color(0xFFFF8C00)),),
                            ],
                          ))
                    ],
                  );
                },
                options: CarouselOptions(
                  height: 427,
                  enableInfiniteScroll: false
                ))
          ],
        ),
      ),
    );
  }
}
