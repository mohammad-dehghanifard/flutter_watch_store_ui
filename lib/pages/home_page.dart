import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // app bar
              Row(
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
              const SizedBox(height: 48),

              const Text("The Collection",style: TextStyle(fontSize: 32,color: Color(0xFF222B45)))
            ],
          ),
        ),
      ),
    );
  }
}
