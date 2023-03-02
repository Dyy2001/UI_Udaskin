import 'package:flutter/material.dart';

class ChangeProfile extends StatefulWidget {
  const ChangeProfile({super.key});

  @override
  State<ChangeProfile> createState() => _ChangeProfileState();
}

class _ChangeProfileState extends State<ChangeProfile> {
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
                const Text("Change Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20)),
              ],
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
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
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Change photo",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w500),
                  )
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
                  Text(
                    "Name",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text("Maleek Kaleeb")
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
                  Text(
                    "Gender",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text("Male")
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
                  Text(
                    "Date of birth",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text("10/10/2010")
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
                  Text(
                    "Phone number",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text("+628-123-456-7789")
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
                  Text(
                    "Email",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text("maleek@kaleebs")
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.4,
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(370, 50)),
                backgroundColor: MaterialStateProperty.all(Colors.black),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text('Save'),
            ),
          ],
        ),
      ),
    )));
  }
}
