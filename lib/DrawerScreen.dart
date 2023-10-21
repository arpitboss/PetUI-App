import 'package:flutter/material.dart';
import 'package:pet_app_ui/configuration.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                foregroundImage: AssetImage('images/profile.jpg'),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Arpit Verma',
                    style: TextStyle(
                        color: Color(0xFFE9F2F3),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Active Status',
                    style: TextStyle(
                        color: Color(0xFF88B4B5),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: drawerItem
                .map(
                  (e) => Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 20,
                        ),
                        Icon(
                          e["icon"],
                          size: 24,
                          color: check ? Colors.white : const Color(0xFF88B4B5),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: change,
                          onDoubleTap: reverse,
                          child: Text(
                            e["title"],
                            style: TextStyle(
                              color: check
                                  ? Colors.white
                                  : const Color(0xFF88B4B5),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Color(0xFF88B4B5),
                ),
              ),
              const Text(
                'Settings',
                style: TextStyle(
                    color: Color(0xFF88B4B5), fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 2,
                height: 20,
                color: const Color(0xFF88B4B5),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Log out',
                style: TextStyle(
                    color: Color(0xFF88B4B5), fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    setState(() {
      check = false;
    });
    super.initState();
  }

  bool check = false;

  void Function()? change() {
    setState(() {
      check = true;
    });
    return null;
  }

  void Function()? reverse() {
    setState(() {
      check = false;
    });
    return null;
  }
}
