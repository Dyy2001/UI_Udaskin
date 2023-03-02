import 'package:flutter/material.dart';
import 'package:udaskin_app/order_review/order.dart';

class DetailPayPage extends StatefulWidget {
  const DetailPayPage({super.key});

  @override
  State<DetailPayPage> createState() => _DetailPayPageState();
}

class _DetailPayPageState extends State<DetailPayPage> {
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
                  const Text("Payment",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration: BoxDecoration(
                    color: const Color(0xffFafafa),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Payment Deadline',
                              style: TextStyle(
                                color: Color(0xff828282),
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "24:00:00",
                              style: const TextStyle(
                                color: Color(0xffeb5757),
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ]),
                      const SizedBox(height: 10),
                      const Divider(
                        color: Color(0xffe0e0e0),
                        thickness: 1,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Bank BSI",
                            style: TextStyle(
                              color: Color(0xff828282),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Image.asset(
                            "images/14_bsi.png",
                            width: 70,
                            height: 35,
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        "Account number",
                        style: TextStyle(
                          color: Color(0xff828282),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "03948738293849",
                            style: TextStyle(
                              color: Color(0xff4f4f4f),
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Salin",
                            style: TextStyle(
                              color: Color(0xff4f4f4f),
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Total Payment",
                            style: TextStyle(
                              color: Color(0xff828282),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "\$520.00",
                            style: TextStyle(
                              color: Color(0xffeb5757),
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 270,
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
                child: Text('Buy Again'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(370, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(
                        color: Colors.black, // warna border yang diinginkan
                        width: 2, // lebar border yang diinginkan
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderPage()));
                },
                child: Text(
                  'Check Status',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
