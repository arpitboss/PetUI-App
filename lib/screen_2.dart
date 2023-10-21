import 'package:flutter/material.dart';
import 'package:pet_app_ui/configuration.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(children: [
              Expanded(
                child: Container(
                  color: const Color(0xffc4ced3),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color(0xFFFDFDFE),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 80),
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(width: 2,),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  CircleAvatar(
                                    foregroundImage:
                                        AssetImage('images/profile.jpg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Arpit Verma',
                                        style: TextStyle(
                                            color: Color(0xFF606061),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        'Active Status',
                                        style: TextStyle(
                                            color: Color(0xFFC0C0C1),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(
                                width: 100,
                              ),
                              Text(
                                'Oct 16, 2023',
                                style: TextStyle(
                                    color: Color(0xFFC0C0C1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 22,
                              ),
                              SizedBox(
                                width: 110,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  "My job requires moving to another country. I don't have the opportunity to take the cat with me. I am looking for good people who will shelter my Sola.",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      letterSpacing: 0,
                                      wordSpacing: 0.6,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.italic,
                                      color: Color(0xffb1b2b3)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xff606061),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.ios_share_rounded,
                      size: 25,
                      color: Color(0xff606061),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: 1,
              child: Image.asset(
                'images/pet-cat2.png',
                scale: 1.15,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 150,
              decoration: BoxDecoration(
                boxShadow: list,
                color: const Color(0xfffdfdfe),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.values.last,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // SizedBox(width: 2,),
                      Text(
                        'Sola',
                        style: TextStyle(
                            color: Color(0xFF626263),
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Icon(
                        Icons.female_rounded,
                        size: 34,
                        color: Color(0xFFABACAD),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        'Abyssinian cat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8e8e8f)),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Text(
                        '2 years old',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8e8e8f)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.location_on,
                        color: primaryColor,
                        size: 24,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '5 Bulvarno-Kudriavska Street, Kyiv',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffb1b2b3)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfff4f4f5),
                borderRadius: BorderRadius.circular(40),
              ),
              height: 150,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        boxShadow: list,
                        borderRadius: BorderRadius.circular(20),
                        color: primaryColor),
                    child: const Icon(
                      Icons.favorite_border,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          boxShadow: list,
                          borderRadius: BorderRadius.circular(20),
                          color: primaryColor),
                      child: const Center(
                          child: Text(
                        'Adoption',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
