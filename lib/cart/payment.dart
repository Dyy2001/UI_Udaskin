import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String groupValue = "paypal";
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
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.5),
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
              const SizedBox(height: 40),
              Text("Payment Available",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
              const SizedBox(height: 20),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage("images/10_paypal.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Paypal",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                    Expanded(
                        child: RadioListTile(
                      value: "paypal",
                      groupValue: groupValue,
                      activeColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value.toString();
                        });
                      },
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffFafafa),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color(0xffF2F2F2), width: 1),
                        image: const DecorationImage(
                          image: AssetImage("images/12_googlepay.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Google Pay",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                    Expanded(
                        child: RadioListTile(
                      value: "googlepay",
                      groupValue: groupValue,
                      activeColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value.toString();
                        });
                      },
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffFafafa),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color(0xffF2F2F2), width: 1),
                        image: const DecorationImage(
                          image: AssetImage("images/13_dana.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Danapay",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                    Expanded(
                        child: RadioListTile(
                      value: "dana",
                      groupValue: groupValue,
                      activeColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value.toString();
                        });
                      },
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffFafafa),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color(0xffF2F2F2), width: 1),
                        image: const DecorationImage(
                          image: AssetImage("images/11_gopay.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Gopay",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                    Expanded(
                        child: RadioListTile(
                      value: "gopay",
                      groupValue: groupValue,
                      activeColor: Colors.black,
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value.toString();
                        });
                      },
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 120),
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
              //ButtonAsset(title: "Save", onPressed: ()=> Navigator.pop(context))
            ]),
          ),
        ),
      ),
    );
  }
}
