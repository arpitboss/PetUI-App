import 'package:flutter/material.dart';
import 'package:pet_app_ui/screen_2.dart';
import 'package:pet_app_ui/screen_3.dart';
import 'configuration.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scalefactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          //color: Color(0xF4F4F5FF),
          color: Colors.white),
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scalefactor),
      duration: const Duration(milliseconds: 250),
      //color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  isDrawerOpen
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              xoffset = 0;
                              yoffset = 0;
                              scalefactor = 1;
                              isDrawerOpen = false;
                            });
                          },
                          icon: const Icon(Icons.arrow_back_ios_new))
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              xoffset = 230;
                              yoffset = 150;
                              scalefactor = 0.6;
                              isDrawerOpen = true;
                            });
                          },
                          icon: const Icon(Icons.menu)),
                  Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Location',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFABACAD),
                            fontSize: 13),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 20,
                            color: primaryColor,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: 'Ghaziabad, ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87)),
                              TextSpan(
                                  text: 'India',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15))
                            ]),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                  const CircleAvatar(
                    foregroundImage: AssetImage('images/profile.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xfff3f3f4),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            )),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xFFABACAD),
                        ),
                        suffixIcon: const Icon(
                          Icons.filter_alt_outlined,
                          color: Color(0xFFABACAD),
                        ),
                        hintText: 'Search Pet to adopt',
                        filled: true,
                        fillColor: const Color(0xfffdfdfe),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(left: 20),
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    boxShadow: list,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(
                                    categories[index]['iconPath'],
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Center(child: Text(categories[index]['name'])),
                              ],
                            );
                          } else {
                            return Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(left: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: list,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(
                                    categories[index]['iconPath'],
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Center(child: Text(categories[index]['name'])),
                              ],
                            );
                          }
                        }),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen2()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      height: 250,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(top: 50),
                                  decoration: BoxDecoration(
                                      boxShadow: list,
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFFC8D2D6)),
                                ),
                                Align(
                                  child: Hero(
                                      tag: 1,
                                      child:
                                          Image.asset('images/pet-cat2.png')),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 70, bottom: 20),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: Align(
                                alignment: const Alignment(-0.7, -0.6),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.values.last,
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Sola',
                                          style: TextStyle(
                                              color: Color(0xFF626263),
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 62,
                                        ),
                                        Icon(
                                          Icons.female_rounded,
                                          size: 32,
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
                                          width: 10,
                                        ),
                                        Text(
                                          'Abyssinian cat',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff8e8e8f)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '2 years old',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xffc7c7c8),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 7,
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          color: primaryColor,
                                          size: 16,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          'Distance: 3.6 km',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xffb1b2b3)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen3()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 250,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(top: 50),
                                  decoration: BoxDecoration(
                                      //boxShadow: list,
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFE8CCA3)),
                                ),
                                Align(
                                  child: Hero(
                                      tag: 2,
                                      child:
                                          Image.asset('images/pet-cat1.png')),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin:
                                  const EdgeInsets.only(top: 70, bottom: 20),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: Align(
                                alignment: const Alignment(-0.7, -0.6),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.values.last,
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Orion',
                                          style: TextStyle(
                                              color: Color(0xFF626263),
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 54,
                                        ),
                                        Icon(
                                          Icons.male_rounded,
                                          size: 32,
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
                                          width: 10,
                                        ),
                                        Text(
                                          'Abyssinian cat',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff8e8e8f)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '1.5 years old',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xffc7c7c8),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 7,
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          color: primaryColor,
                                          size: 16,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          'Distance: 7.8 km',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xffb1b2b3)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
