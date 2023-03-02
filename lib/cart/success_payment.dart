import 'package:flutter/material.dart';
import 'package:udaskin_app/cart/detail_payment.dart';

class SuccesPayPage extends StatefulWidget {
  const SuccesPayPage({super.key});

  @override
  State<SuccesPayPage> createState() => _SuccesPayPageState();
}

class _SuccesPayPageState extends State<SuccesPayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                          Icons.close,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text("Payment Confirmation",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20)),
                ],
              ),
              Container(
                height: 580,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Ink.image(
                        image: AssetImage("images/payment.png"),
                        width: 200,
                        height: 200,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPayPage()));
                          },
                          child: Container(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text("Payment Successfull",
                          style: TextStyle(
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w500,
                              fontSize: 20)),
                      const SizedBox(height: 10),
                      const Text(
                          "Your payment was successful,\nplease see the trail of your order",
                          style: TextStyle(
                              color: Color(0xffbdbdbd),
                              fontWeight: FontWeight.w500,
                              fontSize: 16)),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
