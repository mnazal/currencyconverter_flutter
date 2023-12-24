// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<StatefulWidget> createState() => _CurrencyConverterMaterialState();
}

class _CurrencyConverterMaterialState extends State {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
      ),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              margin: EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  enabledBorder: border,
                  focusedBorder: border,
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  hintText: 'Enter amount in USD',
                  hintStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.white,
                  filled: true,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(10),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  minimumSize: MaterialStatePropertyAll(
                    Size(double.infinity, 45),
                  ),
                ),
                child: Text('Convert'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
