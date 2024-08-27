import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  int firsvaliu = 1;
  int secondvaliu = 1;

  final TextEditingController _cardHolderController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  String? cardHolder;
  String? cardNumber;
  String? code;

  @override
  void dispose() {
    _cardHolderController.dispose();
    _cardNumberController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  void _confirmPayments() {
    setState(() {
      cardHolder = _cardHolderController.text;
      cardNumber = _cardNumberController.text;
      code = _codeController.text;
    });
    _cardHolderController.clear();
    _cardNumberController.clear();
    _codeController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Checkout detailes",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              width: 400,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 112, 90, 240),
                    Color.fromARGB(255, 143, 90, 179),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(35),
                    topRight: Radius.circular(35)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 70,),
                    Text(cardNumber ?? "card number", style: const TextStyle(color: Colors.white, fontSize: 35),),
                    const SizedBox(height: 30,),
                    Row(
                      children: [
                        Text(cardHolder ?? "card ", style: const TextStyle(color: Colors.white, fontSize: 20),),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Text(code ?? "code ", style: const TextStyle(color: Colors.white, fontSize: 10),),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                    controller: _cardHolderController,
                    decoration: InputDecoration(
                      labelText: "Card Holder",
                     
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _cardNumberController,
                    decoration: InputDecoration(
                      labelText: "Card Number",
                      
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _codeController,
                    decoration: InputDecoration(
                      labelText: "code",
                      
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Expiration date",
                  style: TextStyle(color: Colors.black),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 175,
                    ),
                    DropdownButton(
                        value: firsvaliu,
                        items: const [
                          DropdownMenuItem(
                            value: 1,
                            child: Text("24"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("25"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("26"),
                          ),
                          DropdownMenuItem(
                            value: 4,
                            child: Text("27"),
                          ),
                          DropdownMenuItem(
                            value: 5,
                            child: Text("28"),
                          ),
                          DropdownMenuItem(
                            value: 6,
                            child: Text("29"),
                          ),
                        ],
                        onChanged: (e) {
                          firsvaliu = e!;
                          setState(() {});
                        }),
                    const SizedBox(
                      width: 30,
                    ),
                    DropdownButton(
                        value: secondvaliu,
                        items: const [
                          DropdownMenuItem(
                            value: 1,
                            child: Text("01"),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("02"),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("03"),
                          ),
                          DropdownMenuItem(
                            value: 4,
                            child: Text("04"),
                          ),
                          DropdownMenuItem(
                            value: 5,
                            child: Text("05"),
                          ),
                          DropdownMenuItem(
                            value: 6,
                            child: Text("06"),
                          ),
                        ],
                        onChanged: (e) {
                          secondvaliu = e!;
                          setState(() {});
                        }),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 170,
                ),
                ElevatedButton(
                  onPressed: _confirmPayments,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: const Text(
                    "Confirm Payment",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
