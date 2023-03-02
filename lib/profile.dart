import 'package:flutter/material.dart';
import 'package:udaskin_app/profile/change_profil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.only(top: 30, left: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.topLeft,
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const Text("Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20)),
              ],
            ),
            const SizedBox(height: 20),
            Row(children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "images/8_profil.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Maalek Shobab",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20)),
                    SizedBox(height: 5),
                    Text("Silver members",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ]),
            ]),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.content_paste,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "My orders",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.4,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Shipping addresses",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.4,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.wallet,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Payment methodes",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.4,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "images/diskon.png",
                        height: 25,
                        width: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "My voucher",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.4,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChangeProfile()));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.settings,
                          size: 25,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Settings",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.4,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              child: const Text("Logout",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
            ),
            const Divider(
              color: Color(0xffe0e0e0),
              thickness: 1,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              child: const Text("Version 0.1",
                  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),
          ],
        ),
      ),
    )));
  }
}
